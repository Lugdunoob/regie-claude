# Le processus de la Régie : tout cadrer, coder à la fin

Leçon de domelo : coder avant d'avoir cadré produit un dépôt où l'on ne sait plus ce qui
tourne, des modules écrits et jamais déployés, et une mémoire de projet qu'il faut
relire à chaque session. Ici, le code est la dernière étape. Avant lui, tout est écrit,
relu, et contesté par le Contradicteur avant que le Stratège l'approuve. Chaque carte est
un fichier `docs/cartes/NN-<nom>.md` avec `parents`, un statut, et un livrable commité
(skill `carte`). La chaîne tourne en loops Claude Code (skill `boucle-regie`).

| # | Carte | Agent | Livrable | Qui tranche, veto du fondateur 24 h |
|---|-------|--------|----------|---------------------|
| 1 | Cadrage | Stratège | `cadrage.md` : besoin, marché sourcé, hypothèses, question décisive | Stratège, après challenge |
| 2 | Méthode Musk | Musk | `exigences.md` + metadata : gardé, supprimé, simplifié, détail signature | Stratège, après challenge |
| 3 | Spécification | Produit | `spec.md` : parcours, écrans ou interactions, règles, données, critères d'acceptation numérotés | Stratège, après challenge ; signalée « à lire » au fondateur |
| 4 | Design | Architecte (ou skill de design installée) | Maquettes des parcours retenus, tokens, états vides et d'erreur | Stratège |
| 5 | Architecture et plan | Architecte | Décisions d'architecture (ADR), modèle de données, contrats d'API, plan de tests, découpage en lots | Stratège ; dépenses hors budget = réservé |
| 6 | Tests d'acceptation | Architecte | Un test exécutable par critère d'acceptation, rouge avant le code | Rien : ce sont les critères de la carte 3, traduits |
| 7…n | Lot 1, lot 2, … | Développeur | Une PR par lot, CI verte, tests du lot verts | Stratège merge si CI verte et challenge répondu |
| n+1 | Recette | Fondateur + Développeur | Parcours de la carte 3 rejoués à la main, écarts en cartes | Le fondateur, c'est lui l'utilisateur |
| n+2 | Pilote | Marketing + Stratège | Onboarding, consentements, mesures | **Réservé** : l'invitation part vers des tiers |
| n+3 | Rétro | Stratège | Coût, écarts spec/réel, propositions de skills | Stratège propose ; continuer ou arrêter = réservé |

## Qui décide : les agents, sauf sur la liste réservée

Décision du fondateur (2026-09-11) : les agents sont autonomes. Une carte n'attend pas
le fondateur pour avancer. Le circuit d'une décision :

1. **L'auteur** de la carte propose, avec options et recommandation.
2. **Le Contradicteur** conteste (trois contestations au plus, chacune avec alternative).
3. **L'auteur** répond : accepte, réfute avec source, ou remonte.
4. **Le Stratège** tranche ce qui est remonté, et approuve la carte. La carte suivante part.
5. **Le fondateur** reçoit le journal de décision (voir format) et le livrable : commit
   `carte(NN): approuvée`, notification GitHub, résumé de fin de programme dans le terminal.
   Il peut annuler une décision dans les **24 heures** ; passé ce délai, elle est acquise.
   Le silence vaut accord. C'est la seule façon de ne pas recréer la fatigue de validation
   qui a tué l'atelier de juin.

**Liste réservée** : les décisions qu'aucun agent ne prend, jamais, parce qu'elles
engagent le fondateur, un tiers, ou de l'argent hors budget. Le Stratège les met en
carte « à trancher », écrit `BLOCKED.md`, et le loop sort proprement (`_BLOCKED`) :
- dépenser au-delà du budget de la carte ou du plafond mensuel ;
- envoyer quoi que ce soit à une personne extérieure (email, invitation, message) ;
- publier (app, site, réseau social, store) ;
- supprimer des données de quelqu'un d'autre que soi, ou changer un texte de consentement ;
- signer, payer, embaucher, contracter ;
- toute action de niveau L3 ;
- toucher à `docs/spec.md` après son approbation autrement que par PR relue par le Stratège ;
- modifier un `SOUL.md`, une skill, ou un fichier de `societes/<nom>/` (voix, audience, preuves)
  autrement que par PR : ce sont les règles permanentes, un run ne les change pas.

**Journal de décision**, obligatoire sur chaque carte approuvée, dix lignes au plus :
décision · options considérées (au moins deux) · qui a tranché · réversible ou non ·
ce qui ferait revenir dessus · veto possible jusqu'à (date, heure).

**Règle de non-blocage** : un agent qui ne peut pas trancher choisit la version la plus
réversible, le note, et avance. Une chaîne qui attend est un défaut, pas une prudence.

## Le Contradicteur, entre l'auteur et le Stratège

Chaque carte qui passe en `review` est lue d'abord par le profil **Contradicteur**
(skill `challenge`) : hypothèse la plus faible, direction non explorée, pré-mortem,
second ordre, et pour un lot, implémentation plus courte et cas limites manquants.
Au plus trois contestations, chacune avec une alternative et ce qui la trancherait.
L'auteur répond dans la carte (accepte, réfute avec source, ou remonte). Une
contestation bloquante sans réponse renvoie la carte. Le Stratège tranche ce qui est
remonté, avec le mémo et les réponses sous les yeux : il décide entre deux positions
argumentées, pas devant une seule. Le fondateur voit les deux dans le journal.

Câblage Claude Code : le Contradicteur est un sous-agent (`agents/contradicteur.md`) que le
Stratège appelle sur chaque carte en `review`, et que le fondateur peut appeler à la main
avec `/regie:challenge NN`. Il ne relit jamais son propre travail : auteur ≠ relecteur.

## Règles

1. **Pas de carte de code sans carte de spécification relue.** Le Développeur refuse
   une carte « Lot » dont les critères d'acceptation ne sont pas numérotés et validés.
2. **Un lot = une PR = des critères identifiés.** La PR cite les critères qu'elle couvre.
   Un critère non couvert par un lot n'existe pas dans le produit.
3. **Le dépôt commence par `docs/`, pas par `src/`.** `docs/spec.md`, `docs/adr/`,
   `docs/data-model.md`, `docs/test-plan.md` sont commités avant tout code, et
   `CLAUDE.md` pointe vers eux (modèle dans `templates/CLAUDE.md`).
4. **La spec est la mémoire, pas le chat.** Un changement d'avis se fait par PR sur
   `docs/spec.md`, jamais par un message à l'agent codeur.
5. **Les tests d'acceptation sont écrits avant le code** et restent rouges jusqu'à ce que
   le lot les fasse passer. C'est la porte de qualité du Développeur, pas son jugement.
6. **Le fondateur ne relit pas, il peut annuler** : chaque carte approuvée est commitée avec son
   journal de décision, et un veto de 24 heures. Le programme suivant ne se lance pas avant. Les cartes 1 (besoin) et 3 (spec) lui sont
   signalées comme « à lire de préférence », sans bloquer la chaîne.
7. **Aucune carte n'arrive au fondateur sans le mémo du Contradicteur et les réponses
   de l'auteur.** Trois contestations au plus, toujours avec une alternative.

8. **Un champ manquant renvoie la carte, il ne se comble pas.** Chaque profil a un contrat
   de rôle (`templates/contrat-de-role.md`) qui nomme ce qu'il lit. Si un champ requis
   manque en entrée, il fait `kanban_request_changes` vers l'étape précédente. Une
   hypothèse plausible glissée en silence traverse toute la chaîne jusqu'au code.
9. **Chaque veto du fondateur devient un exemple.** Un veto n'est pas une correction
   ponctuelle : le Stratège l'inscrit dans la rétro et propose, par PR, la ligne de skill
   qui aurait évité la décision. Quand le même veto revient deux fois, la règle est
   obligatoire. C'est ainsi que le goût du fondateur entre dans le système sans qu'il
   relise chaque carte.
10. **La mémoire commune est sélective.** `societes/<nom>/` et les skills ne contiennent
   que des règles acceptées, des exemples réutilisables et des liens vers les sources.
   Les brouillons, hypothèses et pistes rejetées restent dans les cartes, où on peut les
   relire ou les jeter sans polluer ce que tous les profils lisent à chaque run.

11. **Une itération, une carte ; un loop, un programme.** La chaîne tourne en boucles
   Claude Code bornées (`boucle-regie`) : mémoire de boucle `.loop/<idee>-progress.md`,
   vérifications binaires ou grille de notation, promesse de complétion, sortie honnête
   `BLOCKED.md`. Jamais de boucle non bornée.
12. **Le Contrôleur améliore la méthode, pas les règles.** En fin d'itération, le Stratège
   peut ajuster découpage, ordre, briefs, seuils, vérifications, et le journalise dans
   `.loop/<idee>-method-log.md`. Règles absolues, liste réservée et DoD : propositions
   seulement, remontées à la rétro. Les leçons `GENERIQUE` vont dans `LESSONS.md` par PR.
13. **Les garde-fous sont dans la machine, pas dans la prose.** `.claude/settings.json`
   interdit le push forcé et le merge dans `main` ; le hook `garde-docs` bloque toute
   écriture dans `docs/` pendant un lot. Un prompt est un contexte, pas une frontière.

## Ce qui remplace quoi, par rapport à la version Hermes

| Hermes | Claude Code |
|---|---|
| Profil, `SOUL.md`, distribution installable | Sous-agent `agents/<nom>.md` dans le plugin `regie` |
| Kanban, `kanban_request_review` | `docs/cartes/NN-<nom>.md` + `.loop/<idee>-progress.md` (skill `carte`) |
| Dispatcher, cron, Bot Mode | Loop Claude Code (`/ralph-loop` ou `ralph.sh`), une itération par carte |
| Passerelle Telegram | Commit + notification GitHub ; résumé dans le terminal |
| `approvals`, `deny` | `.claude/settings.json` (permissions) + hooks |
| Plafond en dollars, `gardien.sh` | Quota de l'abonnement Max, `ccusage` ; pas de serveur à surveiller |
| Mémoire par profil | Mémoire de projet Claude Code + `societes/<nom>/` |
| Clé API par société | Abonnement Max du fondateur ; une autre société a le sien |

## Ce que ça coûte

Trois cartes de plus avant le code, environ une semaine calendaire, et zéro dollar de
plus sur l'abonnement Max tant que le quota tient. Ce que ça évite : le mois de domelo
passé à documenter ce qui avait été codé sans plan.
