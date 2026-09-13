# regie-claude

La Régie, en plugin Claude Code : une équipe d'agents qui prend une idée et la mène
jusqu'à un pilote. Les agents décident ; le fondateur reçoit le journal de décision et
garde un veto de 24 heures. Tout est cadré avant la première ligne de code.

Version portée depuis `regie-hermes` (2026-09-12). Tourne sur l'abonnement Max, sans
serveur, sans clé API. Hermes reste l'outil pour ce qui est continu et multi-canal
(gardien, prospection, bot de pilote) ; Claude Code pour ce qui produit un livrable.

## Installer

```
claude plugin marketplace add <org>/regie-claude
claude plugin install regie@regie
claude plugin validate .        # dans un clone, avant toute PR
```

Les agents s'appellent `regie:stratege`, `regie:contradicteur`, `regie:musk`,
`regie:produit`, `regie:architecte`, `regie:dev`, `regie:marketing`, `regie:pilote`.
Les commandes : `/regie:lancer`, `/regie:carte`, `/regie:challenge`, `/regie:retro`, `/regie:veto`.

## Démarrer une idée

```
mkdir coeur-relatif && cd coeur-relatif && git init
bash <chemin-du-plugin>/scripts/nouvelle-idee.sh coeur-relatif "Cœur relatif" coeur-relatif
claude
> /regie:lancer "Cœur relatif"          # cinq questions fermées, cartes 01-03 créées
> /ralph-loop "$(cat .loop/prompts/loop-cadrage.md)" --max-iterations 15 --completion-promise "REGIE_CADRAGE_DONE"
```

Le loop s'arrête sur `REGIE_CADRAGE_DONE` (trois cartes approuvées, journal commité) ou
sur `REGIE_CADRAGE_BLOCKED` (`BLOCKED.md` explique : décision réservée ou obstacle).
Puis 24 h de veto, puis le programme B (`docs/programme.md`).

## Contenu

- `PROCESS.md` : les cartes, la gouvernance (agents autonomes, liste réservée, veto), les treize règles, la table Hermes → Claude Code.
- `LESSONS.md` : carnet de leçons génériques, relu à chaque programme, nourri par les rétros.
- `agents/` : huit sous-agents, chacun avec son contrat de rôle (décide, lit, rend, ne fait jamais, terminé quand) et son modèle.
- `skills/` : méthode et métier par agent, plus `carte` (le fichier qui remplace le Kanban), `boucle-regie` (la chaîne en loop borné), `societe`, `sources-datees`.
- `commands/` : les cinq commandes.
- `hooks/garde-docs.sh` : bloque toute écriture dans `docs/` pendant un lot, et dans `docs/spec.md` après approbation. Garde-fou machine, pas prose.
- `templates/` : `CLAUDE.md` du dépôt d'idée, carte, programme, les prompts de loop A/B/lot/D, `settings.json`, `ralph.sh` (contexte frais).
- `scripts/nouvelle-idee.sh` : prépare un dépôt d'idée en une commande.
- `golden/` : run de référence des cartes 1 et 2 sur « Cœur relatif », pour comparer le premier run des agents.

## Ce que le skill `loop-engineering` de domelo a changé dans le processus

| Avant (Hermes) | Maintenant |
|---|---|
| Kanban et dispatcher tournent sans fin | Un programme = un loop borné avec `--max-iterations`, promesse de complétion, sortie `BLOCKED` honnête |
| « Fini » = l'agent le dit | « Fini » = commandes à code de sortie (lots) ou grille de notation ≥ 8/10 sur chaque critère (cadrage, spec) |
| Amélioration à la rétro seulement | Contrôleur en fin de chaque itération, périmètre borné, journal `method-log`, `GENERIQUE` → `LESSONS.md` |
| Coût mesuré en dollars | Métrique : part du livrable gardée par carte ; sous 50 %, on resserre la skill ou on repasse en manuel |
| Garde-fous dans les prompts et `approvals` | `settings.json` (deny push forcé, merge, reset) + hook `garde-docs` |
| Chaîne lancée d'un coup | Programmes séparés par la fenêtre de veto ; un loop par lot ; contexte frais (`ralph.sh`) au-delà de 25 itérations |
| Mémoire = Kanban distant | `.loop/<idee>-progress.md` lu en premier, écrit en dernier, seule mémoire entre itérations |
| Une carte nouvelle part directement en agent | Règle d'or : un run manuel d'abord (`golden/`), puis skill, puis loop, puis planification |

## Suivre le projet : trois écrans, zéro logiciel à construire

1. **`docs/etat.md`**, régénéré à chaque push par `scripts/etat.py` : veto ouverts avec le temps
   restant, cartes et statuts, prochaines étapes, notes « à trancher », rétros. C'est la page
   à ouvrir le matin, sur GitHub, depuis le téléphone. `/regie:etat` l'affiche dans le terminal.
2. **Issues et jalons GitHub**, miroir à sens unique (`scripts/miroir-github.sh`) : une issue par
   carte, un jalon par programme avec sa barre d'avancement, le label `veto-ouvert` pendant
   24 h. Sert aux notifications et à la feuille de route. On n'y écrit jamais à la main.
3. **Les PR** pour les lots : le diff est le rapport, la CI est le verdict.

Les fichiers restent la seule vérité ; ces écrans sont des vues. Pas de tableau de bord
dédié tant que la Régie ne pilote pas plusieurs sociétés en parallèle.

## Trois couches, trois rôles

Les agents sont l'équipe, `societes/<nom>/` est la mémoire commune (voix, audience,
preuves, règles ; lecture seule depuis un run, change par PR), les cartes et la
progression sont le bureau de production. La conversation coordonne ; l'état vit dans
les fichiers.

## Ordre de montage

1. Installer le plugin, créer `societes/<nom>/index.md` et `voix.md` minimaux.
2. Faire la carte 01 **à la main** avec `/regie:carte 01` et la comparer à `golden/carte-1-cadrage.md`.
3. Lancer le programme A en loop sur la même idée. Comparer. Ajuster les skills par PR.
4. Programme B, puis un loop par lot, puis recette par le fondateur, puis programme D.
5. `/regie:retro` après chaque programme. Les PR de skills sont mergées par le fondateur les trois premiers mois.

## Skills externes : lesquels, quand, et où (relevé le 2026-09-13)

Le format `npx skills add <owner>/<repo>` (skills.sh) fonctionne dans Claude Code. Règle :
installer ce qui enlève une douleur de la semaine, dans le dépôt d'idée, jamais dans le plugin.

| Skill | Quand | Pour qui | Réserve |
|---|---|---|---|
| `jakubkrehel/make-interfaces-feel-better` | carte 04 Design, dernier lot d'interface | Architecte, Développeur | aucune |
| `mattpocock/skills` (TDD, revue seulement) | après la carte 05, dans le dépôt d'idée | Développeur | ne pas lancer son `setup` : il impose sa propre organisation de docs et d'issues |
| `addyosmani/agent-skills` (revue, sécurité seulement) | lots sensibles | Contradicteur sur un diff | son `/build` autonome contredit « un lot, une PR » ; ne pas l'installer en pack |
| `codebase-memory-mcp` | dépôt de plus de ~200 fichiers (domelo, pas une idée neuve) | tous | vérifier le dépôt d'origine avant d'installer ; local, données sur la machine |
| humanizer (`blader/humanizer` ou `jooray/humanizer`) | textes publics | Marketing | patrons anglophones, à tester sur du français ; `voix.md` reste la référence |

Non retenus : oh-my-hermes, Minions (Hermes seulement) ; Agent-Reach, youtube-full,
Defuddle (Claude Code a déjà la recherche et la lecture web) ; SkillClaw (un proxy qui
enregistre toutes les sessions et les partage dans un dépôt cloud, hors règle « données UE »
et hors règle « amélioration tracée ») ; Browser Harness (navigateur réel avec cookies) ;
Composio (les connecteurs MCP existent déjà) ; OpenMontage, Resemble, cybersécurité (pas
le besoin). Loopy fait doublon avec `loop-engineering`.

## Abonnement Max

Les agents et les loops tournent dans Claude Code, sur l'abonnement du fondateur : c'est
l'usage prévu de l'outil. Le coût est du quota (tranches de 5 h, plafond hebdomadaire),
pas des dollars ; `ccusage` le mesure. Une autre société utilise son propre compte.
Aucun jeton n'est réutilisé ailleurs.
