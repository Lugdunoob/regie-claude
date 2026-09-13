---
name: carte
description: Écrire, faire avancer et clore une carte de la Régie, fichier docs/cartes/NN-<nom>.md avec statut, parents, livrable, challenge, réponses, journal de décision et metadata. Remplace le Kanban de Hermes. À utiliser par tout agent qui ouvre, renvoie, passe en review ou approuve une carte.
version: 0.1.0
---

# Carte

Une carte est un fichier, commité, lisible sans avoir suivi le run. Il n'y a pas d'autre
état : ni conversation, ni mémoire d'agent. La liste des cartes et leur ordre vivent dans
`.loop/<idee>-progress.md` (mémoire de boucle).

## Nom et emplacement
`docs/cartes/NN-<nom>.md`, NN sur deux chiffres dans l'ordre de la chaîne. Les lots :
`docs/cartes/07-lot-01.md`, `08-lot-02.md`…

## En-tête (YAML, obligatoire)
```yaml
carte: 02
nom: Méthode Musk
agent: musk
skills: [methode-musk]
parents: [01]
statut: a_faire        # a_faire · en_cours · review · changements_demandes · approuvee · vetoee
livrable: docs/exigences.md
porte: "chaque exigence supprimée cite le besoin qui reste couvert ; un seul détail signature"
risque: L0             # L0 lire · L1 brouillonner · L2 proposer PR · L3 agir (jamais en autonomie)
approuvee_le:          # rempli par le Stratège
veto_jusqu_au:         # approuvee_le + 24 h
```

## Corps, dans cet ordre
1. **Entrées reçues** : les champs requis par le contrat de rôle étaient présents, ou : renvoyée, champ manquant.
2. **Résumé de fin de carte** au format `templates/fin-de-carte.md`.
3. **Challenge** : le mémo du Contradicteur, collé tel quel.
4. **Réponses de l'auteur** : sous chaque contestation, accepte / réfute avec source / remonte.
5. **Journal de décision** : écrit par le Stratège à l'approbation (format dans `fin-de-carte.md`).
6. **metadata** : un bloc JSON, exactement au format demandé par la skill de la carte.

## Transitions
- `a_faire → en_cours` : l'agent assigné commence. Il écrit d'abord « Entrées reçues ».
- `en_cours → review` : livrable écrit, résumé de fin de carte complet, `metadata` présent.
- `review → changements_demandes` : le Contradicteur a une contestation bloquante sans réponse, ou un champ requis manque. Motif en première ligne du corps.
- `review → approuvee` : le Stratège, et lui seul, après le challenge et les réponses. Il remplit `approuvee_le`, `veto_jusqu_au`, le journal, et commite : `carte(NN): approuvée`.
- `approuvee → vetoee` : le fondateur, dans les 24 h, en changeant le statut et en écrivant la raison. La carte suivante déjà commencée est renvoyée.

## Interdits
- Approuver sa propre carte. Approuver sans mémo du Contradicteur.
- Modifier une carte approuvée autrement que par une nouvelle carte qui la cite.
- Un livrable hors de `docs/` pour les cartes 1 à 6.
