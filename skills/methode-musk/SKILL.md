---
name: methode-musk
description: Passer les exigences d'une idée cadrée aux premiers principes puis à l'algorithme en cinq étapes, sans perdre le besoin utilisateur ni le détail signature. À utiliser sur la carte « Méthode Musk », après un cadrage relu.
version: 0.1.0
---

# Méthode Musk

Deux garde-fous avant la méthode, parce que l'algorithme vient de l'ingénierie et
qu'un produit grand public n'est pas une fusée :

- **Le besoin d'abord.** Chaque exigence porte le besoin qu'elle sert (issu du
  `metadata` du cadrage). Une exigence ne peut être supprimée que si son besoin reste
  couvert par une autre exigence conservée. Une suppression qui laisse un besoin
  orphelin est interdite.
- **Un détail signature, protégé.** Désigner exactement un élément qui échappe à la
  suppression et à la simplification : le détail qui fait la différence, choisi là où
  l'étude de marché montre que personne ne le fait. Un seul. Il est nommé dans la
  sortie, avec la raison.

## 0. Premiers principes

Décomposer jusqu'aux faits qu'on sait vrais : ce que coûte réellement un composant,
ce que dure réellement une tâche, ce que l'utilisateur fait ou paie réellement
aujourd'hui. Écrire ces faits, avec source quand c'est un chiffre. Reconstruire à
partir d'eux. Interdit : « parce que les autres le font ».

## 1. Rendre les exigences moins bêtes

Lister toutes les exigences du cadrage et celles qu'on sous-entend. Pour chacune :
qui l'a posée (une personne, pas « le marché »), pourquoi, quel besoin. Les exigences
venant d'un expert ou d'un concurrent sont les plus suspectes. Une exigence sans
raison est réécrite ou marquée à supprimer.

## 2. Supprimer la pièce ou l'étape

Pour chaque exigence : que se passe-t-il si on ne la fait pas ? Supprimer tout ce qui
survit à cette question. Règle de Musk : si on n'est pas obligé d'en remettre au moins
dix pour cent plus tard, on n'a pas assez supprimé. Chez nous, le « plus tard » est le
pilote : on supprime large, le pilote remet.

## 3. Simplifier et optimiser

Seulement ce qui a survécu. Une seule façon de faire chaque chose. L'erreur la plus
fréquente est d'optimiser quelque chose qui ne devrait pas exister : vérifier que
chaque élément simplifié a bien passé l'étape 2.

## 4. Accélérer le cycle

Quelle est la boucle la plus courte entre une hypothèse et une réponse d'un vrai
utilisateur ? La rendre plus courte. Jamais avant les trois étapes précédentes.

## 5. Automatiser, en dernier

Ce qu'on automatise, et seulement après que le pilote a montré que les gens en veulent.

## Sortie

`exigences.md` avec les cinq sections ci-dessus, puis le passage de la carte en `statut: review` (skill `carte`) et
ces `metadata`, exactement :

```json
{
  "besoins_proteges": ["…"],
  "detail_signature": { "quoi": "…", "pourquoi": "…" },
  "faits_premiers_principes": [{ "fait": "…", "source": "URL ou 'mesuré'" }],
  "exigences_gardees": [{ "exigence": "…", "besoin": "…" }],
  "exigences_supprimees": [{ "exigence": "…", "raison": "…", "besoin_couvert_par": "…" }],
  "exigences_simplifiees": [{ "avant": "…", "apres": "…" }],
  "cycle": { "boucle": "…", "duree": "…" },
  "automatiser_apres_pilote": ["…"],
  "perimetre_mvp": "une phrase"
}
```

## Porte de qualité

- `detail_signature` est renseigné, unique, et justifié par l'étude de marché.
- Aucune exigence supprimée ne laisse un besoin sans `besoin_couvert_par`.
- Chaque fait de premiers principes a une source ou la mention « mesuré ».
- `perimetre_mvp` tient en une phrase, sans le mot « et » plus de deux fois.
