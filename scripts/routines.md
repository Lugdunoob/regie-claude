# Routines de l'assistant de direction

À créer une fois par idée, avec le tool `create_trigger` (MCP claude-code-remote) de la
session qui héberge le dépôt. Deux routines, pas plus.

## 1. Vérification, toutes les 30 minutes

```
create_trigger(
  name: "Assistant de direction — <idée>",
  cron_expression: "*/30 * * * *",   # si refusé, l'erreur donne le minimum autorisé ;
                                       # se rabattre sur "0 * * * *" (chaque heure) alors
  prompt: "Vérifie .loop/en-cours dans <chemin du dépôt>. S'il est absent, ne fais rien
et arrête-toi (c'est le cas normal). S'il est présent, invoque l'agent
regie:assistant-de-direction (skill tableau-de-bord) pour régénérer
docs/tableau-de-bord/data.json, commiter et pousser seulement si quelque chose a
changé. Ne prends aucune décision, ne code rien.",
  initiation: "human_request"
)
```

## 2. Audit complet, une fois par jour

```
create_trigger(
  name: "Audit quotidien — <idée>",
  cron_expression: "0 6 * * *",   # heure UTC à ajuster à la préférence du fondateur
  prompt: "Dans <chemin du dépôt>, invoque l'agent regie:assistant-de-direction avec la
skill audit-quotidien, sans condition de verrou cette fois. Produit
docs/rapports/AAAA-MM-JJ-HHhMM.md et met à jour le tableau de bord.",
  initiation: "human_request"
)
```

Les deux tournent indépendamment de la session qui les a créées : elles réveillent la
session cible (ou en créent une neuve selon la configuration) au moment prévu.
