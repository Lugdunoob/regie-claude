# Carnet de leçons de la Régie

Relu par le Stratège au début de chaque programme, enrichi à chaque rétro. N'y inscrire
que des leçons **génériques**, valables pour toute idée ; les leçons propres à une idée
restent dans le `.loop/` de son dépôt. Même format que le carnet du skill `loop-engineering`.

```
## R-<numéro> — <titre court> (<date>, idée d'origine : <nom>)
- Symptôme : ce qui a été observé
- Cause : le défaut de skill, de contrat ou de découpage qui l'a produit
- Règle : ce qu'il faut faire différemment
- Statut : active | intégrée le <date> dans <fichier> | obsolète
```

Quand une leçon revient deux fois ou est structurante : l'intégrer dans la skill ou le
contrat concerné par PR, puis la marquer « intégrée ». Viser moins de vingt leçons actives.

---

## R-1 — Coder avant d'avoir cadré (2026-09-11, idée d'origine : domelo)
- Symptôme : un dépôt où l'on ne sait plus ce qui tourne, des modules jamais déployés, un mois de remise en ordre.
- Cause : aucune carte de spécification avant la première carte de code.
- Règle : le dépôt commence par `docs/` ; pas de lot sans critères numérotés ni tests rouges.
- Statut : intégrée le 2026-09-11 dans `PROCESS.md` (règles 1, 3, 5) et `vibe-coding-cadre`.

## R-2 — Calibration qui note une première séance sans référence (2026-09-11, idée d'origine : Cœur relatif)
- Symptôme : le Contradicteur a montré qu'une note relative à soi n'a pas de sens tant qu'il n'y a pas d'historique.
- Cause : la carte Musk avait gardé la règle de notation sans prévoir le démarrage à froid.
- Règle : toute règle « relative à un historique » doit dire ce qui se passe aux N premières occurrences.
- Statut : active.

## R-3 — Champ manquant comblé en silence (2026-09-12, idée d'origine : article J.B. sur Hermes)
- Symptôme : une hypothèse plausible glissée par un agent traverse toute la chaîne jusqu'au code.
- Cause : pas de contrat d'entrée par agent.
- Règle : chaque agent a un contrat de rôle ; un champ requis manquant renvoie la carte.
- Statut : intégrée le 2026-09-12 dans `templates/contrat-de-role.md` et `PROCESS.md` (règle 8).

## R-4 — Succès mesuré aux tokens, pas à l'utilité (2026-07-17, reprise de `loop-engineering` L-4)
- Symptôme : run jugé réussi alors que le fondateur jette la majorité du résultat.
- Cause : pas de suivi de la part gardée.
- Règle : chaque rétro estime la part gardée par carte ; sous 50 %, resserrer la skill ou repasser en manuel.
- Statut : intégrée le 2026-09-12 dans la skill `retro`.
