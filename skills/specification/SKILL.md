---
name: specification
description: Écrire spec.md à partir des metadata de la carte Méthode Musk. Parcours, règles, données, critères d'acceptation numérotés et testables. À utiliser sur la carte « Spécification ».
version: 0.1.0
---

# Spécification

## Entrée
Les `metadata` de la carte Méthode Musk : besoins protégés, détail signature,
exigences gardées et simplifiées, périmètre du MVP. Rien d'autre n'entre.

## Structure de `spec.md`

1. **Le produit en une phrase**, reprise du `perimetre_mvp`.
2. **Les utilisateurs**, un paragraphe chacun, avec ce qu'ils font aujourd'hui sans le produit.
3. **Les parcours** : un par besoin protégé. Chaque parcours est une suite numérotée
   d'étapes « l'utilisateur fait … / le produit répond … », avec l'état de départ et
   l'état d'arrivée. Le détail signature apparaît dans au moins un parcours, marqué.
4. **Les règles** : ce que le produit calcule ou décide, écrit de façon qu'un test puisse
   le vérifier (entrées, sortie, cas limites). Toute formule est donnée en entier.
5. **Les données** : ce qu'on stocke, ce qu'on ne stocke jamais, durée de conservation,
   qui voit quoi. Les données de santé et personnelles sont marquées.
6. **Les états vides et d'erreur** : que voit l'utilisateur quand il n'y a rien, quand ça
   échoue, quand la source de données est absente.
7. **Hors périmètre** : la liste de ce que Musk a supprimé, pour que personne ne le
   remette sans PR.
8. **Critères d'acceptation** : numérotés `CA-01`, `CA-02`, … Chaque critère est une
   phrase vérifiable par un test : « Étant donné …, quand …, alors … ». Chaque parcours
   et chaque règle a au moins un critère. Le détail signature en a au moins deux.

## Sortie
- `spec.md`.
- `metadata` : `{ parcours[], criteres: [{id, texte, parcours, regle}], donnees_sensibles[], hors_perimetre[] }`.

## Porte de qualité
- Aucune fonctionnalité de `exigences_supprimees` n'apparaît hors de la section « Hors périmètre ».
- Chaque critère est au format « Étant donné / quand / alors ».
- Le détail signature a au moins deux critères.
- Aucune décision technique (pile, base, framework) dans la spec : ça appartient à l'Architecte.
