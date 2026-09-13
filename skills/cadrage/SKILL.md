---
name: cadrage
description: Cadrer une idée avant tout travail. Produit cadrage.md et la chaîne de cartes dans `docs/cartes/`. À utiliser quand le fondateur donne une idée nouvelle.
version: 0.1.0
---

# Cadrage

## Quand
Le fondateur donne une idée, en une phrase ou en une page. Rien n'existe encore.

## Étapes, dans l'ordre

1. **Cinq questions fermées, pas plus** (`AskUserQuestion`, options fermées) :
   - Pour qui, en premier ? (une seule cible)
   - Quelle preuve as-tu déjà que le problème existe ? (aucune / anecdotes / données)
   - Quel usage prioritaire ? (produit vendu / outil interne / pilote entre proches)
   - Quel délai pour un premier retour d'utilisateur réel ? (2 sem. / 1 mois / 3 mois)
   - Quelle contrainte non négociable ? (données UE / budget / pas d'app native / autre)

2. **Ce qui existe.** Recherche web. Pour chaque produit proche : ce qu'il fait, ce qu'il
   ne fait pas par rapport à l'idée, prix, URL, date. Au moins cinq, pas plus de douze.
   Conclure honnêtement : le trou existe, est petit, ou est comblé.

3. **Le besoin, pas la fonctionnalité.** Reformuler l'idée en un besoin utilisateur
   (« quelqu'un qui … veut … parce que … »). Lister les besoins secondaires. Chaque
   exigence future devra pointer vers un de ces besoins.

4. **Trois hypothèses à tuer**, chacune avec le test le moins cher qui la tuerait.

5. **La question qui décide** : une seule phrase. Si la réponse est non, on arrête.

6. **La chaîne de cartes.** Créer les fichiers `docs/cartes/NN-<nom>.md` (skill `carte`), avec `parents` explicites,
   `agent`, `skills`, et pour chacune : livrable, porte de qualité, budget en dollars.
   Séquence par défaut (voir `PROCESS.md`) : Cadrage → Méthode Musk → Spécification →
   Design → Architecture et plan → Tests d'acceptation → Lot 1 … Lot n → Recette →
   Pilote → Rétro. Les cartes de lots ne sont créées qu'après la relecture de
   `docs/lots.md` par le fondateur. Retirer une étape est permis, la justifier dans la carte.

## Sortie
- `cadrage.md` selon la structure ci-dessus.
- le passage de la carte en `statut: review` (skill `carte`) au format `templates/fin-de-carte.md`.
- `metadata` : `{ besoin_principal, besoins_secondaires[], hypotheses[], question_decisive, contrainte }`.

## Porte de qualité
- Chaque produit cité a une URL et une date.
- Le besoin principal tient en une phrase sans nom de fonctionnalité.
- La question décisive a une réponse oui/non.
- Aucune question ouverte n'a été posée au fondateur.
