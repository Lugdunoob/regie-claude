---
name: voix
description: Règles d'écriture pour tout texte lu par un utilisateur : phrases courtes, actif, concret, sans superlatif, sans jargon, et la règle du refus facile. Les règles de marque propres à une société (voix domelo, etc.) s'ajoutent par-dessus, dans une skill de la société.
version: 0.1.0
---

# Voix

- Une idée par phrase. Vingt mots au plus.
- Voix active. « Tu déclares ta séance », pas « la séance est déclarée ».
- Concret avant abstrait : un exemple avant une règle.
- Aucun superlatif, aucun « révolutionnaire », « unique », « simple ». Montrer, pas qualifier.
- Aucun jargon technique dans un texte utilisateur : pas de « bot », « API », « données », sauf dans le texte de consentement où ils sont obligatoires et expliqués.
- Le tutoiement ou le vouvoiement est décidé une fois par société, dans sa skill de marque, et ne change jamais.
- Tout message qui demande quelque chose dit aussi comment refuser, en une phrase, sans culpabiliser.
- Un texte se relit à voix haute ; ce qu'on ne dirait pas à un collègue se coupe.
- Les textes de marque d'une société (ton, mots interdits, mots signature) vivent dans `skills/brand-voice-<societe>/` et priment sur cette skill.
