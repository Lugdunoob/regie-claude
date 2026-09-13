---
name: boucle-regie
description: Faire tourner une chaîne de cartes de la Régie en boucle autonome Claude Code (technique Ralph, skill loop-engineering de domelo) : une itération = une carte, mémoire de boucle, vérifications binaires ou grille de notation, Contrôleur borné, promesse de complétion, sortie honnête si bloqué. À utiliser par le Stratège pour lancer ou reprendre un programme.
version: 0.1.0
---

# Boucle de la Régie

La chaîne n'est pas un Kanban qui vit sur un serveur, c'est un loop Claude Code qui
relance le même prompt jusqu'à une promesse de complétion. Tout ce que le skill
`loop-engineering` impose à un loop s'applique ici, carte par carte.

## Une idée = un programme de loops, pas un seul loop
« Un loop, une mission. » La chaîne est découpée en programmes, séparés par la fenêtre
de veto de 24 h du fondateur :

| Programme | Cartes | Porte | Itérations max |
|---|---|---|---|
| A `cadrage` | 1 Cadrage · 2 Musk · 3 Spécification (+ challenges) | grille de notation ≥ 8/10 sur chaque critère de la skill, mémo du Contradicteur répondu | 15 |
| B `plan` | 4 Design (si écrans) · 5 Architecture · 6 Tests d'acceptation | binaire : chaque CA a un test qui existe et **échoue** | 15 |
| C `lot-NN` | un loop **par lot** | binaire : typecheck, lint, tests du lot verts, `docs/` intact | 2,5 × sous-lots, palier 15/25/40 |
| D `pilote` | Marketing · Pilote (protocole, consentement) | grille ≥ 8/10 ; l'envoi est réservé | 10 |
| Rétro | après chaque programme | `retro.md` existe, PR de skills ouvertes | 5 |

`docs/programme.md` liste les loops, leur ordre, leur commande de lancement, et l'état.

## Le test des quatre conditions, par carte
Une carte tourne en autonomie si : (1) elle se répète d'une idée à l'autre, (2) quelque
chose peut la recaler sans humain, (3) l'agent peut la finir seul, (4) « fini » est
objectif. Pour les cartes 1 à 3, la condition 4 est fausse : « fini » est un jugement.
Ce qui remplace le jugement du fondateur, sans le faire attendre : la grille de notation
de la skill, le Contradicteur, le journal de décision, et le veto de 24 h. C'est du
semi-automatique par le temps : le loop prépare et décide, le fondateur peut annuler.

## Une itération
1. Lire `.loop/<idee>-progress.md` et `git log --oneline -15`. Sans souvenir, ce sont les seuls états.
2. Prendre la première carte non cochée. Vérifier `git branch --show-current`.
3. Déléguer à l'agent de la carte (sous-agent, brief fermé : carte, fichiers autorisés, format de retour). Les lectures lourdes (étude de marché, audit de dépôt) sont déléguées et reviennent en résumé.
4. Passer la carte au Contradicteur. Faire répondre l'auteur. Trancher ce qui remonte.
5. Porte : grille ou commandes. Un échec se corrige dans la même itération.
6. Approuver la carte (skill `carte`), commiter, cocher la progression, journal.
7. **Contrôleur** : relire la mémoire et se demander ce qui, dans la méthode, a coûté. Ajuster seulement le découpage, l'ordre, les briefs, les seuils, les vérifications ; journaliser dans `.loop/<idee>-method-log.md`. Tout ce qui toucherait aux règles absolues, à la liste réservée ou à la DoD est écrit comme PROPOSITION. Marquer `GENERIQUE` ce qui vaut au-delà de l'idée.
8. Mettre à jour la progression en dernier.

## Sorties honnêtes
- Toute la DoD vraie et vérifiée : `<promise>REGIE_<PROGRAMME>_DONE</promise>`.
- Même obstacle après trois itérations, ou décision réservée rencontrée : `BLOCKED.md`
  (symptôme, essais, options), puis `<promise>REGIE_<PROGRAMME>_BLOCKED</promise>`.
  Une décision réservée n'est pas un échec, c'est la sortie prévue : le fondateur tranche, on relance.
- À l'itération N−3 sans complétion : stabiliser et documenter, ne rien ouvrir.

## Règles absolues (jamais ajustées par le Contrôleur)
- `main` intouchable ; un programme = une branche `regie/<programme>` ; zéro push forcé.
- Aucune écriture dans `docs/` pendant un programme C (hook `garde-docs`, `.loop/phase`).
- Liste réservée de `PROCESS.md`.
- La promesse est un constat, pas une sortie de secours.

## Modèles par rôle
Stratège, Contradicteur, Musk, Architecte : `opus`. Produit, Développeur, Marketing,
Pilote : `sonnet`. Études, audits, extractions déléguées : `haiku`. Sur l'abonnement Max,
ce n'est pas des dollars, c'est du quota : la règle tient quand même.

## Avant le premier loop d'une carte nouvelle
Règle d'or de `loop-engineering` : ne jamais automatiser ce qui n'a pas marché à la main.
Une carte nouvelle se fait d'abord une fois en session interactive, se compare au
`golden/`, puis entre dans le loop.
