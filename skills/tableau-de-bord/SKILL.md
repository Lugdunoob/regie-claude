---
name: tableau-de-bord
description: Régénérer docs/tableau-de-bord/data.json à partir des fichiers réels du dépôt (cartes, tests exécutés, commits), neutre, sans jugement ni recommandation. À utiliser par l'assistant de direction, seulement si .loop/en-cours existe.
version: 0.1.0
---

# Tableau de bord

## Avant de commencer
Vérifier `.loop/en-cours`. Absent : s'arrêter, ne rien faire. C'est le cas normal.

## Ce que fait `scripts/tableau-de-bord.py`
1. Lit chaque `docs/cartes/NN-*.md` : statut, veto, journal de décision, challenge,
   réponses, section « À trancher », bloc `metadata` JSON.
2. Construit `a_prendre` : une fenêtre de veto ouverte (informationnel, silence = accord)
   ou une vraie note « à trancher » qui n'est pas « aucune »/« rien » (celles-là comptent,
   ce sont les seules qui demandent un avis).
3. Extrait la stratégie produit depuis les `metadata` des cartes 01 (Cadrage), 02
   (Musk), 03 (Spécification) — jamais depuis les documents finaux eux-mêmes, qui sont
   de la prose sans structure.
4. Fait vraiment tourner `npx vitest run --reporter=json` pour savoir quel critère
   `CA-xx` est vert, en croisant avec `docs/test-plan.md` (colonne fichier de test).
   **Jamais une inférence** depuis une branche fusionnée ou un statut de carte : ce que
   dit le test au moment présent, rien d'autre.
5. Écrit `docs/tableau-de-bord/data.json`.

## Après
- `git diff --stat -- docs/tableau-de-bord/data.json`. Si vide (aucun octet changé de
  façon significative), ne pas commiter.
- Sinon : `git add docs/tableau-de-bord/data.json && git commit -m "tableau-de-bord: mise à jour automatique" && git push`.

## Interdits
- Écrire une phrase de jugement, une recommandation, un « bravo » ou un « attention ».
- Republier s'il n'y a aucun changement.
- Lire un fait dans `docs/spec.md` et le présenter comme une décision : les décisions
  vivent dans les cartes, `docs/spec.md` n'est qu'un livrable.
