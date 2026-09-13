---
name: tests-dabord
description: Faire passer les tests d'acceptation d'un lot sans les affaiblir : lire le test, comprendre l'écart, coder le minimum, vérifier que les autres restent verts, ne jamais modifier un test pour qu'il passe. À utiliser dans chaque lot, avec vibe-coding-cadre.
version: 0.1.0
---

# Tests d'abord

## Boucle
1. Lancer les tests du lot. Lire **pourquoi** chacun échoue, pas seulement qu'il échoue.
2. Coder le minimum qui fait passer **un** test. Relancer tout.
3. Recommencer jusqu'à ce que les tests du lot passent et qu'aucun autre ne soit tombé.
4. Relire le diff : tout ce qui ne sert pas à un critère du lot est retiré.

## Interdits
- Modifier un test d'acceptation. Si le test est faux, le dire sous « à trancher » et arrêter le lot.
- Ajouter un `skip`, un `only`, un `try/catch` qui avale.
- Faire passer un test par une valeur codée en dur qui ne viendrait pas de la logique réelle.
- Toucher à un fichier hors des fichiers attendus du lot.

## Avant la PR
Typecheck, lint, tests : les trois commandes de `AGENTS.md`, vertes, collées dans la description de la PR avec leur sortie résumée.
