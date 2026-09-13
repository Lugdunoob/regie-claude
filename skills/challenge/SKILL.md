---
name: challenge
description: Contester une carte avant l'approbation du Stratège : hypothèse la plus faible, directions non explorées, pré-mortem, second ordre. Trois contestations au plus, chacune avec gravité et alternative. À utiliser sur toute carte en statut review, y compris les PR de lots.
version: 0.1.0
---

# Challenge

## Ce que tu lis
La carte, son livrable, ses `metadata`, les cartes parentes, et pour un lot : le diff de la PR et les tests.

## Les six questions, dans l'ordre, sans en sauter
1. **L'hypothèse la plus faible.** Quelle affirmation, si elle est fausse, fait tomber toute la carte ? Est-elle sourcée, mesurée, ou supposée ?
2. **L'alternative non regardée.** Quelle autre direction un concurrent, un utilisateur, ou quelqu'un d'un autre métier aurait prise ? La formuler au mieux (la version la plus forte, pas une caricature), puis dire pourquoi elle perd ou gagne.
3. **Le pré-mortem.** On est six mois plus tard, ça a échoué. Quelle est la cause la plus probable ? Que fallait-il voir aujourd'hui ?
4. **Le second ordre.** Si ça marche, qu'est-ce que ça déclenche qu'on n'a pas voulu ? (coût, dépendance, surveillance, dette)
5. **Le test de suppression inverse.** Y a-t-il quelque chose de supprimé par Musk dont l'absence casse un besoin protégé ? Y a-t-il quelque chose de gardé qui ne sert aucun besoin ?
6. **Pour un lot de code seulement.** Existe-t-il une implémentation deux fois plus courte ? Quel cas limite les tests ne couvrent pas ? Qu'est-ce qui casse si la dépendance externe change ?

## Ce que tu écris : `challenge.md`, joint à la carte
Au plus trois contestations, chacune :
- **Gravité** : bloquante (la carte ne doit pas passer sans réponse) · sérieuse (le Stratège doit la voir avant d'approuver) · mineure (l'auteur décide).
- **La contestation** en deux phrases.
- **L'alternative** proposée, concrète, avec ce qu'elle coûte.
- **Ce qui la trancherait** : la mesure, le test, ou le fait que le Stratège doit poser pour départager.

Puis une ligne : « solide » ou « à revoir », et pourquoi en dix mots.

## Ce que fait l'auteur
Il répond sous chaque contestation, dans la carte : **accepte** (et modifie), **réfute** (avec la raison et la source), ou **remonte** (au Stratège, avec les deux options). Une contestation bloquante sans réponse renvoie la carte.

## Garde-fous
- Trois contestations au plus. Une seule bloquante par carte.
- Jamais de contestation sans alternative.
- Une contestation déjà réfutée avec source ne revient pas sur la carte suivante.
- Sur un cadrage ou des exigences, le mémo fait moins de 400 mots. Sur un lot, moins de 250.
- Tu ne réécris pas le livrable. Tu ne codes pas. Tu ne tranches pas.
