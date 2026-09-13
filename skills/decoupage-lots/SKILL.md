---
name: decoupage-lots
description: Découper la spécification en lots livrables par un agent en une journée, ordonnés pour que le détail signature soit vérifiable dès le lot 1, chacun avec ses critères, ses fichiers, son budget. À utiliser pour docs/lots.md.
version: 0.1.0
---

# Découpage en lots

## Règles d'ordre
1. **Lot 0 : le squelette.** Dépôt, `docs/`, `AGENTS.md`, CI qui lance les tests d'acceptation (tous rouges), un « hello » déployé. Aucune fonctionnalité.
2. **Lot 1 fait passer au moins un critère du détail signature.** Si le produit n'a pas sa raison d'être au lot 1, l'ordre est faux.
3. Puis le chemin critique du parcours principal, de bout en bout, en version brute.
4. Puis les cas limites et d'erreur.
5. Puis les parcours secondaires.
6. En dernier : ce qui est joli, rapide, ou confortable.

## Chaque lot
- Numéro, titre, critères couverts (`CA-xx`), fichiers attendus, commandes de vérification, durée estimée (au plus une journée d'agent), budget en dollars, dépendances.
- Un lot qui dépasse une journée est coupé en deux, jamais étiré.
- Un critère appartient à un seul lot.

## Porte
Tous les critères de la spec sont couverts, une seule fois. Le total des budgets tient dans le budget de la carte MVP.
