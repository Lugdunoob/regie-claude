# Carnet de leçons de la Régie

Relu par le Stratège au début de chaque programme, enrichi à chaque rétro. N'y inscrire
que des leçons **génériques**, valables pour toute idée ; les leçons propres à une idée
restent dans le `.loop/` de son dépôt. Même format que le carnet du skill `loop-engineering`.

```
## R-<numéro> — <titre court> (<date>, idée d'origine : <nom>)
- Symptôme : ce qui a été observé
- Cause : le défaut de skill, de contrat ou de découpage qui l'a produit
- Règle : ce qu'il faut faire différemment
- Statut : active | intégrée le <date> dans <fichier> | obsolète
```

Quand une leçon revient deux fois ou est structurante : l'intégrer dans la skill ou le
contrat concerné par PR, puis la marquer « intégrée ». Viser moins de vingt leçons actives.

---

## R-1 — Coder avant d'avoir cadré (2026-09-11, idée d'origine : domelo)
- Symptôme : un dépôt où l'on ne sait plus ce qui tourne, des modules jamais déployés, un mois de remise en ordre.
- Cause : aucune carte de spécification avant la première carte de code.
- Règle : le dépôt commence par `docs/` ; pas de lot sans critères numérotés ni tests rouges.
- Statut : intégrée le 2026-09-11 dans `PROCESS.md` (règles 1, 3, 5) et `vibe-coding-cadre`.

## R-2 — Calibration qui note une première séance sans référence (2026-09-11, idée d'origine : Cœur relatif)
- Symptôme : le Contradicteur a montré qu'une note relative à soi n'a pas de sens tant qu'il n'y a pas d'historique.
- Cause : la carte Musk avait gardé la règle de notation sans prévoir le démarrage à froid.
- Règle : toute règle « relative à un historique » doit dire ce qui se passe aux N premières occurrences.
- Statut : active.

## R-3 — Champ manquant comblé en silence (2026-09-12, idée d'origine : article J.B. sur Hermes)
- Symptôme : une hypothèse plausible glissée par un agent traverse toute la chaîne jusqu'au code.
- Cause : pas de contrat d'entrée par agent.
- Règle : chaque agent a un contrat de rôle ; un champ requis manquant renvoie la carte.
- Statut : intégrée le 2026-09-12 dans `templates/contrat-de-role.md` et `PROCESS.md` (règle 8).

## R-4 — Succès mesuré aux tokens, pas à l'utilité (2026-07-17, reprise de `loop-engineering` L-4)
- Symptôme : run jugé réussi alors que le fondateur jette la majorité du résultat.
- Cause : pas de suivi de la part gardée.
- Règle : chaque rétro estime la part gardée par carte ; sous 50 %, resserrer la skill ou repasser en manuel.
- Statut : intégrée le 2026-09-12 dans la skill `retro`.

## R-6 — Placeholders de commandes jamais vraiment substitués dans settings.json (2026-09-13, idée d'origine : Cœur relatif)
- Symptôme : `.claude/settings.json` contenait trois fois `Bash(à compléter en carte 05)`
  au lieu des vraies commandes de vérification, découvert juste avant de lancer le
  premier loop de lot.
- Cause : `nouvelle-idee.sh` appliquait la même substitution générique (destinée à
  `CLAUDE.md`, où c'est un texte lisible) au fichier `settings.json`, où c'est une
  permission Bash : les trois lignes devenaient identiques et fausses.
- Règle : ne jamais réutiliser un même texte de substitution « à compléter » pour un
  fichier de configuration lu par la machine (permissions, CI) et pour un fichier lu par
  un humain (documentation) ; le premier doit rester absent tant que la vraie valeur
  n'existe pas, jamais rempli d'un texte placeholder. La carte Architecture ajoute les
  trois commandes réelles à `CLAUDE.md` ET à `.claude/settings.json`.
- Statut : intégrée le 2026-09-13 dans `scripts/nouvelle-idee.sh` et `skills/architecture/SKILL.md`.

## R-7 — Tests écrits avant le code cassent le typecheck de tout le dépôt (2026-09-13, idée d'origine : Cœur relatif)
- Symptôme : `tsc --noEmit` échoue sur l'ensemble du dépôt, pas seulement sur les tests
  visés, dès que la carte « Tests d'acceptation » écrit les dix-huit tests avant que
  leurs modules n'existent (import vers un fichier absent).
- Cause : aucun stub typé pour les modules pas encore construits ; TypeScript ne
  distingue pas « ce module n'existe pas encore, c'est voulu » de « ce module manque
  par erreur ».
- Règle : pour chaque module importé par un test d'un lot futur, écrire un stub typé
  qui lève une erreur explicite (« à implémenter au lot NN »), avec les bonnes
  signatures. Le typecheck redevient vert sur tout le dépôt ; les tests restent rouges,
  mais à l'échelle de l'assertion plutôt que de l'échec de résolution de module.
- Statut : active. À intégrer dans la skill `architecture` (carte « Tests d'acceptation »)
  et `tests-dabord`.

## R-8 — La CI ne peut pas exiger « tous les tests verts » avant le dernier lot (2026-09-13, idée d'origine : Cœur relatif)
- Symptôme : chaque push affiche la CI en échec sur GitHub dès que la carte « Tests
  d'acceptation » est approuvée, alors que rien n'est cassé : c'est l'état voulu par la
  règle 5 de `PROCESS.md` (tests rouges jusqu'à leur lot).
- Cause : le workflow de CI traite `npm test` comme une porte bloquante sur l'ensemble
  du dépôt, incompatible avec des tests intentionnellement rouges pour des lots futurs.
- Règle : dans le modèle de workflow, le typecheck et le lint restent bloquants sur
  chaque push (ce sont de vraies régressions si rouges) ; le step de tests passe en
  `continue-on-error: true` avec un commentaire expliquant pourquoi, jusqu'à ce que le
  lot de Recette soit atteint. Chaque lot vérifie lui-même l'absence de régression avant
  sa propre fusion, dans sa carte.
- Statut : active. À intégrer dans le modèle de CI produit par la carte Architecture.

## R-9 — `git push -u origin` refusé par un motif de permission qui n'autorisait que `git push origin` (2026-09-14, idée d'origine : Cœur relatif)
- Symptôme : le loop du lot 4 a vu `git push -u origin lot-04` réclamer une approbation
  trois fois de suite, alors que `.claude/settings.json` autorise `Bash(git push origin *)`.
- Cause : le motif de permission compare le texte après « git push », `-u origin lot-04`
  ne correspond pas littéralement à `origin *`. Le flag `-u` avant `origin` change le
  texte, pas seulement le comportement.
- Règle : `templates/settings.json` autorise maintenant les deux formes,
  `Bash(git push origin *)` et `Bash(git push -u origin *)`. L'agent a bien fait de ne
  pas insister indéfiniment sur la même commande bloquée : il a changé de forme
  (`git push` puis suivi de branche séparé) plutôt que de contourner la permission.
- Statut : intégrée le 2026-09-14 dans `templates/settings.json`.

## R-10 — Le workflow etat faisait tourner les tests sans avoir installé les dépendances (2026-09-14, idée d'origine : Cœur relatif)
- Symptôme : `scripts/tableau-de-bord.py` plantait en CI (`FileNotFoundError` sur le
  rapport JSON de vitest) alors qu'il tournait très bien en local.
- Cause : `templates/github-workflow-etat.yml` n'installait jamais les dépendances
  Node avant d'appeler le script, contrairement à `ci.yml`. `npx vitest` sans
  `node_modules` échoue silencieusement dans cet environnement.
- Règle : le modèle de workflow `etat` installe maintenant les dépendances
  (`actions/setup-node` + `npm install`) avant de régénérer quoi que ce soit qui fait
  tourner du code. `scripts/tableau-de-bord.py` échoue aussi plus proprement si le
  rapport de tests manque (avertissement + continue, jamais une trace Python brute).
- Statut : intégrée le 2026-09-14 dans `templates/github-workflow-etat.yml` et `scripts/tableau-de-bord.py`.
