---
name: vibe-coding-cadre
description: Coder un lot avec Claude Code sans sortir du cadre : lire docs/, faire passer les tests du lot, une PR, un coût. À utiliser sur toute carte « Lot n ».
version: 0.1.0
---

# Vibe coding, cadré

Le vibe coding a marché sur domelo pour aller vite, et a coûté un mois de remise en
ordre parce qu'il n'y avait pas de cadre. Le cadre, c'est ceci.

## Avant de coder, vérifier
1. La carte cite des critères `CA-xx` et un lot de `docs/lots.md`. Sinon : refuser,
   le renvoi de la carte (`statut: changements_demandes`, motif en tête).
2. Les tests d'acceptation du lot existent et sont rouges. Sinon : refuser.
3. `AGENTS.md` existe et pointe vers `docs/`. Sinon : refuser.

## Coder
1. Worktree du lot : `git worktree add ../lot-NN -b lot-NN` (ou la branche `lot-NN` si le
   loop en a déjà une). Première action de chaque itération : `git branch --show-current`.
2. Écrire `lot` dans `.loop/phase` : le hook `garde-docs` bloque alors physiquement toute
   écriture dans `docs/`. Ce n'est pas une consigne, c'est une porte fermée.
3. Lire `CLAUDE.md`, `docs/spec.md`, `docs/lots.md` (lot NN), `docs/test-plan.md`, puis
   les tests rouges du lot. Implémenter uniquement ce qui fait passer `CA-xx, CA-yy`.
4. Vérifications binaires avant chaque commit, celles de `CLAUDE.md` : typecheck, lint,
   tests du lot. Un échec se corrige dans la même itération, jamais en modifiant le test.
5. Si le même obstacle tient après trois itérations : l'écrire dans `BLOCKED.md` et sous
   « à trancher » avec deux options, renvoyer la carte, ne pas contourner.
6. Coût : sur l'abonnement Max il n'y a pas de dollars par lot, il y a du quota. Noter
   le nombre d'itérations et la sortie de `ccusage` si installé.

## Livrer
1. `git diff --stat` : aucun fichier de `docs/` modifié, aucun fichier hors du lot.
2. Typecheck, lint, tests : les commandes de `AGENTS.md`, toutes vertes.
3. PR avec, dans la description : lot, critères couverts, coût, ce qui a été laissé de
   côté et pourquoi. La PR est le livrable ; le contrat de complétion de la carte
   exige CI verte.
4. le passage de la carte en `statut: review` (skill `carte`).

## Interdits
- Ajouter une fonctionnalité « tant qu'on y est ».
- Toucher à un autre lot.
- Contourner un test qui échoue en le modifiant.
- Pousser sur `main`.
