---
name: sources-datees
description: Règle commune à tous les agents : tout fait, chiffre, prix ou règle de droit porte une URL et une date de relevé, sinon il est marqué « non vérifié » et n'appuie aucune décision. À charger sur toute carte qui cite quelque chose.
version: 0.1.0
---

# Sources datées

Règle héritée de domelo (posée le 2026-08-23) : un chiffre sans date se traite comme non vérifié.

- Chaque fait externe s'écrit : `fait (source : URL, relevé le AAAA-MM-JJ)`.
- Un fait de mémoire, sans page lue, s'écrit `non vérifié` et ne peut pas fonder une suppression, un prix ou une décision.
- Un prix se relève sur la page de l'éditeur, pas sur un comparateur ; si seul un comparateur est accessible, le dire.
- Deux sources qui divergent : citer les deux, ne pas trancher seul.
- Une page inaccessible (403, 404) : le dire, et chercher une source secondaire nommée comme telle.
- En fin de carte, la section « Sources » liste toutes les URL utilisées.
