---
name: audit-quotidien
description: Une fois par jour, indépendamment du verrou .loop/en-cours, produit docs/rapports/AAAA-MM-JJ-HHhMM.md — un audit complet et neutre de l'idée en cours, plus la mise à jour du tableau de bord. À utiliser par l'assistant de direction sur son déclenchement quotidien.
version: 0.1.0
---

# Audit quotidien

Contrairement à la mise à jour de routine (`tableau-de-bord`), cet audit tourne même si
aucun agent ne travaille : c'est le point du jour, pas une réaction à de l'activité.

## Ce qu'on lit
- Tout `docs/cartes/*.md` (pas seulement celles qui ont changé aujourd'hui).
- `.loop/*-method-log.md` : les ajustements de méthode journalisés depuis le dernier audit.
- `git log --since=<dernier audit>` : les commits du jour.
- Les fenêtres de veto : lesquelles sont ouvertes, lesquelles ont expiré depuis le
  dernier audit (donc acquises).
- Le résultat réel des tests (comme pour le tableau de bord, mais consigné pour la trace
  du jour).

## Ce qu'on écrit : `docs/rapports/AAAA-MM-JJ-HHhMM.md`
1. **Depuis hier** : cartes approuvées, cartes vetoées, lots terminés — une ligne
   chacune, fait brut.
2. **Fenêtres acquises** : les veto qui ont expiré depuis le dernier audit ; rappeler
   la décision qu'elles couvraient, sans commentaire.
3. **Décisions en attente d'un avis**, si elles existent : listées telles quelles.
4. **Critères d'acceptation** : X/18 verts, delta depuis hier.
5. **Rien à signaler** est une conclusion valide et doit être écrite telle quelle si
   c'est le cas — ne pas gonfler un rapport pour justifier son existence.

## Interdits
- Toute phrase qui commence par « il faudrait », « je recommande », « attention à ».
  Ce rapport informe, il ne dirige pas. Une observation qui mériterait une décision se
  transforme en note « à trancher » sur la carte concernée par le Stratège, pas ici.
- Comparer un projet à un autre, ou juger la vitesse d'avancement.

## Après
Mettre à jour `docs/tableau-de-bord/data.json` (skill `tableau-de-bord`, sans la
condition du verrou cette fois), committer les deux fichiers ensemble, pousser.
