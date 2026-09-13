---
name: criteres-acceptation
description: Écrire des critères d'acceptation qu'un test peut vérifier sans interprétation : forme « étant donné / quand / alors », une seule assertion, données concrètes, cas limites. À utiliser depuis la skill specification, section 8.
version: 0.1.0
---

# Critères d'acceptation

## Forme
`CA-NN · Étant donné <état de départ concret>, quand <une action>, alors <un résultat observable>.`

## Règles
- Une seule assertion par critère. « et » dans le « alors » = deux critères.
- Des valeurs, pas des adjectifs : « 30 minutes, effort 7 » et non « une séance moyenne ».
- Le résultat est observable de l'extérieur : un message, un fichier, une ligne, un refus. Jamais « le système calcule correctement ».
- Chaque règle de la spec a au moins : un cas nominal, un cas limite (borne), un cas d'erreur (entrée invalide), un cas vide (rien à traiter).
- Chaque parcours a un critère de bout en bout.
- Le détail signature a au moins deux critères, dont un qui vérifie **l'absence** de ce qui doit être caché.
- Numérotation continue, jamais réutilisée : un critère supprimé garde son numéro barré.

## Exemple
`CA-07 · Étant donné Noé avec une référence de 180, quand il déclare « course 30 min effort 8 », alors le groupe reçoit « Noé ★★★★ · course » et aucun chiffre.`
`CA-08 · Étant donné Noé en semaine de calibration, quand il déclare une séance, alors le groupe ne reçoit rien et Noé reçoit en privé « enregistré, tes étoiles arrivent la semaine prochaine ».`
