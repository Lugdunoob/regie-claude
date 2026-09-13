---
name: societe
description: Charger la mémoire commune d'une société (index, voix, audience, preuves, règles) en début de run, et refuser de la modifier autrement que par PR. À utiliser par tout agent dès qu'une carte porte le nom d'une société.
version: 0.1.0
---

# Société

## En début de run
1. Lire `societes/<nom>/index.md` en premier : il dit ce qu'on fait, pour qui, ce que toute carte doit contenir, et qui lit quoi.
2. Lire ensuite seulement les fichiers que ton contrat de rôle nomme (`voix.md`, `audience.md`, `preuves.md`, `regles/`).
3. Si `index.md` manque, le noter sous « à trancher » et travailler avec le cadrage seul. Ne pas l'inventer.

## Pendant le run
- Un chiffre ou un témoignage cité vient de `preuves.md` ou porte sa propre URL datée. Sinon il n'est pas cité.
- Un mot de la liste interdite de `voix.md` ne sort pas, même dans un brouillon.

## Interdits
- Écrire dans `societes/<nom>/` depuis un run. Une amélioration devient une proposition de PR dans la rétro.
- Copier le contenu de `societes/<nom>/` dans la mémoire du agent : la mémoire commune a une seule source.
