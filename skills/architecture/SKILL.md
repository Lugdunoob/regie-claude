---
name: architecture
description: Produire docs/adr/, docs/data-model.md, docs/test-plan.md et docs/lots.md à partir de spec.md. Puis écrire les tests d'acceptation, rouges. À utiliser sur les cartes « Architecture et plan » et « Tests d'acceptation ».
version: 0.1.0
---

# Architecture et plan

## Entrée
`spec.md` relu par le fondateur, et ses `metadata` (critères numérotés).

## Carte « Architecture et plan »

1. **ADR** : un fichier par décision dans `docs/adr/NNNN-titre.md` (contexte, options
   avec coût et risque, choix, conséquences). Au minimum : pile, hébergement, stockage,
   authentification, sources de données externes, ce qu'on ne construit pas.
2. **Modèle de données** : `docs/data-model.md`. Entités, champs, ce qui est sensible,
   durée de conservation. Doit couvrir la section « Données » de la spec sans rien ajouter.
3. **Contrats** : `docs/contracts.md`. Chaque échange avec l'extérieur (API tierce,
   webhook, bot de messagerie) : format d'entrée, de sortie, erreurs, limites de débit.
4. **Plan de tests** : `docs/test-plan.md`. Pour chaque `CA-xx` : le type de test
   (unitaire, intégration, bout en bout), les données de test, la commande qui le lance.
5. **Lots** : `docs/lots.md`. Chaque lot : les critères couverts, les fichiers attendus,
   l'ordre, la durée estimée, le budget en dollars. Règle : le lot 1 fait passer au moins
   un critère du détail signature. Aucun lot ne dépasse une journée de travail d'agent.
6. **`CLAUDE.md`** à la racine du dépôt : pointe vers ces documents, donne les commandes
   de vérification (typecheck, lint, tests), et interdit de toucher `docs/` depuis un lot.
   **Ajouter les mêmes trois commandes à `.claude/settings.json` (`permissions.allow`)**,
   sinon un loop headless ne peut pas les exécuter sans confirmation (bug R-6, voir LESSONS.md).

## Carte « Tests d'acceptation »

Écrire un test exécutable par critère, dans le langage de la pile choisie. Tous
doivent **échouer** avant tout code. La CI les lance. La carte se ferme quand
`tests: N rouges, 0 vert` est vérifié.

**Pour chaque module importé par un test d'un lot futur, écrire aussi un stub typé qui
lève une erreur explicite** (« à implémenter au lot NN »), sinon le typecheck échoue sur
tout le dépôt au lieu des seuls tests visés (bug R-7, voir LESSONS.md). Dans le modèle de
CI : typecheck et lint restent bloquants sur chaque push ; le step de tests passe en
`continue-on-error: true` jusqu'au lot de Recette, avec un commentaire qui explique
pourquoi (bug R-8, voir LESSONS.md) — sinon chaque push affiche une CI rouge alors que
rien n'est cassé.

## Porte de qualité
- Chaque critère de la spec apparaît dans un lot et dans le plan de tests.
- Chaque ADR a au moins deux options comparées.
- Le modèle de données ne contient aucun champ absent de la spec.
- Les tests d'acceptation sont rouges, pas absents.
