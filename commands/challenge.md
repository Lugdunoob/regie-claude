---
description: Faire contester une carte ou une PR par le Contradicteur, sans rien décider.
argument-hint: <NN ou chemin de carte ou numéro de PR>
allowed-tools: Read, Bash(git diff:*), Bash(git log:*), Glob, Grep, Agent
---

Appelle le sous-agent `regie:contradicteur` avec la skill `challenge` sur : $ARGUMENTS. Colle son mémo tel quel dans la section « Challenge » de la carte. Ne réponds pas à sa place, ne tranche pas.
