---
name: positionnement
description: Produire le positionnement, la fiche produit versionnée et les messages d'invitation et de bienvenue à partir de spec.md. À utiliser sur la carte « Positionnement ».
version: 0.1.0
---

# Positionnement

## Entrée
`spec.md` relu, `metadata` de la carte Musk (détail signature, hors périmètre).

## Sortie
1. **Une phrase** : pour qui, quoi, pourquoi c'est différent. Le détail signature y est.
2. **`fiche-produit.md`**, versionnée (v1, v2…) : ce que le produit fait, ce qu'il ne fait
   pas (repris de « Hors périmètre »), ce qu'il stocke et ne stocke jamais, comment on
   arrête. Chaque affirmation renvoie à un parcours ou une règle de la spec.
3. **Le message d'invitation** au groupe : 120 mots maximum, ce qu'on propose, ce que
   ça demande, comment refuser sans gêne, qui contacter.
4. **Le message de bienvenue** privé, envoyé par le bot après le consentement : comment
   déclarer une séance, quand arrivent les étoiles, comment supprimer ses données.
5. **Trois messages de la semaine** que le bot peut poster (lundi, milieu, fin), sans
   chiffre et sans injonction.

## Porte de qualité
- Aucune promesse absente de la spec.
- Le mot « performance » n'apparaît nulle part.
- Le message d'invitation dit explicitement que refuser est sans conséquence.
