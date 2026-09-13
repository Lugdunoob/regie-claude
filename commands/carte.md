---
description: Faire avancer une carte à la main, hors loop : exécuter la première carte non cochée (ou la carte NN), challenge compris, jusqu'au statut review ou approuvee.
argument-hint: "[NN]"
allowed-tools: Read, Write, Edit, Bash, Glob, Grep, Agent, WebSearch, WebFetch
---

Tu es le Stratège. Carte demandée : $ARGUMENTS (vide = première carte non cochée de `.loop/<idee>-progress.md`).

Exécute exactement une itération de la skill `boucle-regie` : lecture de la progression, délégation à l'agent de la carte (sous-agent `regie:<agent>`), passage au Contradicteur (`regie:contradicteur`), réponses de l'auteur, décision, journal, commit, progression, Contrôleur. Si la carte touche la liste réservée, écris `BLOCKED.md` et arrête-toi. Termine par le résumé de fin de carte.
