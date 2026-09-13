---
description: Le fondateur annule une carte approuvée dans sa fenêtre de 24 h. Passe la carte en vetoee, renvoie les cartes filles commencées, note la raison pour la rétro.
argument-hint: <NN> <raison>
allowed-tools: Read, Write, Edit, Bash, Glob, Grep
---

Carte et raison : $ARGUMENTS. Vérifie que `veto_jusqu_au` n'est pas dépassé (sinon, dis-le : la décision est acquise, il faut une nouvelle carte). Passe `statut: vetoee`, écris la raison sous « Veto du fondateur », passe toute carte fille en `changements_demandes`, décoche-les dans la progression, commite `carte(NN): veto`. Ajoute une ligne dans `.loop/<idee>-method-log.md` : c'est un exemple pour la rétro (règle 9).
