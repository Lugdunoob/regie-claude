---
name: adr
description: Écrire une décision d'architecture (ADR) : contexte, options comparées avec coût et risque, choix, conséquences, réversibilité. À utiliser pour chaque décision de pile, hébergement, stockage, authentification, dépendance externe.
version: 0.1.0
---

# ADR

Un fichier par décision : `docs/adr/NNNN-titre-court.md`. Statut : proposé · accepté · remplacé par NNNN.

## Structure
1. **Contexte** : le besoin de la spec qui force la décision, en deux phrases, avec les critères concernés.
2. **Options** : au moins deux, au plus quatre. Pour chacune : coût de mise en place, coût de fonctionnement, ce que le fondateur sait déjà faire tourner, risque principal, ce qui se passe si on doit en sortir.
3. **Choix** : une option, et la raison en une phrase.
4. **Conséquences** : ce que ça impose aux lots suivants, ce que ça interdit.
5. **Réversibilité** : combien de temps pour changer d'avis.

## Règles
- La pile la plus ennuyeuse qui satisfait la spec gagne à égalité.
- Ce que le fondateur exploite déjà (Supabase, Next.js, Vercel, Telegram) compte comme un avantage explicite.
- Une dépendance externe (API, SaaS) a un ADR à elle : conditions d'accès, prix, ce qui arrive si elle ferme, avec URL et date.
- Pas de décision sans critère de la spec qui la justifie.
