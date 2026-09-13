---
name: retro
description: Rétrospective de fin de tour : coût réel, cartes passées du premier coup ou renvoyées, écarts entre spec et réel, propositions de modification des skills en PR. À utiliser sur la carte « Rétro ».
version: 0.1.0
---

# Rétro

## Ce qu'on lit
- `.loop/<idee>-progress.md` (journal, idées rejetées) et `.loop/<idee>-method-log.md` (ajustements de méthode du Contrôleur, lignes `GENERIQUE`).
- Le nombre d'itérations par carte et par programme, la sortie de `ccusage` si installée.
- **Le taux d'acceptation** : pour chaque carte, la part du livrable réellement gardée après veto et recette. C'est la métrique qui compte, pas les tokens. Sous 50 %, la carte a coûté plus qu'elle n'a rendu : resserrer la skill ou repasser cette carte en manuel.
- Pour chaque carte : approuvée du premier coup, renvoyée (combien de fois, motif), abandonnée.
- Les notes « à trancher » : lesquelles reviennent deux fois ; celles-là deviennent une règle de skill.
- Les écarts entre `spec.md` et ce qui a été livré.
- Le bilan du pilote, s'il existe.

## Ce qu'on écrit : `retro.md`
1. Tableau : carte · agent · itérations · relectures · part gardée · verdict.
2. Trois choses qui ont marché, trois qui ont coûté.
3. Pour chaque proposition de changement : la skill concernée, le texte avant, le texte après, la raison. Livré comme une **PR** sur le dépôt de distribution, jamais appliqué directement.
4. Trois listes courtes :
   - **Garder** : ce qui a marché au moins deux fois et sert encore la question décisive.
   - **Tester** : ce qui a marché une fois et mérite un second essai contrôlé.
   - **Arrêter** : ce qui a échoué deux fois, les doublons, le travail cher sans résultat.
5. Les vetos du fondateur depuis la dernière rétro, chacun avec la ligne de skill proposée en PR.
   Les lignes `GENERIQUE` du method-log, réécrites au format de `LESSONS.md` (symptôme, cause, règle, statut) et proposées en PR sur le plugin.
6. Une recommandation en une ligne : continuer, changer, arrêter.

## Interdits
Modifier une skill soi-même. Proposer un changement sans nommer les cartes qui le soutiennent.
Faire d'un seul résultat une règle : un résultat crée une hypothèse dans « Tester », pas une règle.
