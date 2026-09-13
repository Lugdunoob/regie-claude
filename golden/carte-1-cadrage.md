# Carte 1 · Cadrage · « Cœur relatif »

*Golden run fait à la main le 2026-09-11, au format que le profil Stratège devra produire. Sert de référence pour comparer le premier run des agents.*

## Les cinq questions fermées, et les réponses supposées

Le Stratège les aurait posées par boutons. Ici, réponses déduites du brief ; à confirmer par le fondateur.

| Question | Réponse supposée |
|---|---|
| Pour qui, en premier ? | Les collègues de bureau du fondateur, une douzaine, niveaux sportifs très différents |
| Quelle preuve que le problème existe ? | Anecdotes : le fondateur, non sportif, ne participe pas aux défis parce que ses chiffres sont ridicules à côté |
| Usage prioritaire ? | Pilote entre proches, pas de produit vendu |
| Délai pour un premier retour réel ? | Un mois |
| Contrainte non négociable ? | Données en Europe, aucune surveillance possible par un supérieur |

## Le besoin, pas la fonctionnalité

**Besoin principal.** Quelqu'un qui bouge moins que ses collègues veut être reconnu pour son effort réel, parce que la comparaison en kilomètres le fait se sentir ridicule et abandonner.

**Besoins secondaires.**
- Recommencer la semaine suivante : la reconnaissance doit revenir, pas être un événement.
- Être vu sans être exposé, et **encouragé par ses pairs** : le groupe doit savoir qu'on a fait un effort, pas ce qu'on a fait, et pouvoir le saluer d'un cœur, comme un kudo. Donner un cœur compte autant que le recevoir : on avance plus loin à plusieurs.
- Équité perçue par les sportifs aussi : s'ils sentent le système « truqué » pour les faibles, ils partent.
- Zéro surveillance : rien ne doit pouvoir remonter à un manager.

## Ce qui existe (relevé le 2026-09-11)

| Produit | Note relative à soi ? | Chiffres cachés ? | Mode équipe ? | Ce qui manque par rapport à l'idée | Source |
|---|---|---|---|---|---|
| Strava, Relative Effort | Oui dans le calcul (zones cardiaques perso) | Non : distance et allure toujours affichées | Non, classements bruts | Payant (~8-11 €/mois), social sur les chiffres bruts | support.strava.com/…/relative-effort |
| Apple Fitness, Compétitions | Oui : points = % d'anneaux personnels | Non, chiffres visibles ailleurs | **Duel seulement** | Pas de groupe, pas d'entreprise | androidpolice.com/how-to-use-apple-watch-competitions |
| Whoop Strain + Whoop Unite | Oui (FC max et forme perso) | Non | Oui, entreprise, agrégé pour le management | Bracelet + ~30 $/mois par personne | whoop.com/…/how-does-whoop-strain-work |
| Garmin défis | Non, totaux bruts | Non | Oui, pas et km | Le contraire de l'idée | support.garmin.com |
| Fitbit Active Zone Minutes | Zones perso, objectif identique pour tous (150 min) | Non | Défis supprimés | Marque en extinction | support.google.com/googlehealth |
| **Motion for Teams** (UK) | **Oui : % d'un objectif perso glissant sur 12 semaines** | Partiellement : la comparaison est neutralisée, les chiffres restent | **Oui, dès 10 salariés, 12-15 $/utilisateur/mois** | Anglophone, confidentiel (~50 000 utilisateurs), pas d'épure « étoiles + cœur » | motion-app.com/motion-for-teams |
| Squadeasy | Points par activité | Non | Oui | « Pouvoirs magiques » pour booster les faibles : embryon d'équité | squadeasy.com/fr/offre |
| Kiplin | Non, mouvement → avatar | Non | Oui | Discours « exercice plutôt que performance », mécanique brute | kiplin.com/fr/defi-entreprise |
| United Heroes | Non, métriques brutes | Non | Oui, classement d'équipe | Données hébergées aux États-Unis ; affirme que ses données ne sont pas des données de santé | united-heroes.com/politique-de-confidentialite |
| EGYM Wellpass (ex-Gymlib), Teamupp | Non, pas | Non | Oui | Défis de pas bruts | blog.gymlib.com ; teamupp.fr |

**Conclusion honnête.** Le trou existe et il est étroit. Le calcul relatif à soi est déjà la norme chez tous les acteurs premium ; un concurrent, Motion, a même le positionnement B2B « équité d'effort ». Ce que personne ne fait : rendre les chiffres absolus **totalement** invisibles, y compris pour soi, et réduire la reconnaissance à une note unique et un cœur, dans un groupe. Et personne ne le fait en français.

## Trois faits qui contraignent le produit

1. **Les données de montre sont fermées à un pilote.** Strava interdit contractuellement d'afficher les données d'un utilisateur à d'autres depuis le 11 novembre 2024 (medianama.com, cybernews.com). Garmin facture 5 000 $ l'accès production (developer.garmin.com). COROS réserve son API aux plateformes établies (support.coros.com). Apple HealthKit et Google Health Connect ne fonctionnent que dans une application native sur le téléphone (sahha.ai). Conséquence : soit une app native, soit pas de montre.
2. **Fréquence cardiaque et performances sont des données de santé** (article 9 RGPD, CNIL : cnil.fr/fr/sportifs-quels-cas-et-conditions-collecte-des-donnees-de-sante). Consentement exprès, et la CNIL met en garde contre les objets « bien-être » en entreprise (cnil.fr/fr/technologies/objets-connectes). Le consentement d'un collègue sollicité par sa hiérarchie n'est pas « libre ».
3. **Les défis gamifiés en entreprise n'améliorent pas de façon cohérente l'activité modérée à intense** (revue parapluie, Lancet Public Health 2025 ; essai JAMA 2019 sur 32 000 salariés). En revanche, la recherche en motivation soutient les buts de maîtrise (progresser par rapport à soi) contre les buts de performance (se démarquer) pour l'engagement durable (PMC5854141 ; Rawsthorne et Elliot 1999). Le produit vise la motivation et la dignité, pas la santé publique : il ne faut pas promettre plus.

## Trois hypothèses à tuer

| Hypothèse | Le test le moins cher qui la tuerait |
|---|---|
| H1. Une note relative à soi fait revenir les non-sportifs là où un classement les fait fuir | Pilote de 4 semaines : participation des 4 moins sportifs en semaine 4 comparée à la semaine 1 |
| H2. Les sportifs acceptent d'être notés comme les autres | Participation et réponse finale des 3 plus sportifs du groupe |
| H3. L'auto-déclaration (durée, effort ressenti) suffit, sans montre, sans que la triche tue la confiance | Question anonyme en fin de pilote : « as-tu eu l'impression que quelqu'un trichait ? » |

## La question qui décide

**Après quatre semaines, au moins huit des douze participent encore et répondent oui à « tu continuerais ? ».** Sinon, on arrête, et la rétro dit pourquoi.

## Décisions du fondateur (2026-09-11)

- **Hiérarchie** : le fondateur n'est le supérieur d'aucun participant. Il peut lancer l'invitation lui-même.
- **Nom** : « Cœur relatif » reste le nom de travail du pilote.
- Statut de la carte : **approuvée**. La carte Méthode Musk est prête.

## À trancher (notes du run, résolues ci-dessus)

- Le fondateur est-il le supérieur hiérarchique d'un des participants ? Si oui, il ne peut pas être l'organisateur du pilote ; quelqu'un d'autre lance l'invitation.
- Faut-il un nom de produit pour le pilote ? Version prudente : « Cœur relatif », nom de travail, pas de marque.

## Résumé de fin de carte

- **Action proposée** : approuver ce cadrage ; la carte Méthode Musk devient prête.
- **Pour qui** : 12 collègues, pilote interne.
- **Ce qui change** : rien encore, aucun code, aucun tiers contacté.
- **Sources** : 20 URL datées du 2026-09-11, listées dans le rapport d'étude joint.
- **Ce qui manque** : les réponses réelles aux cinq questions ; la position hiérarchique du fondateur.
- **Risque** : L0, lecture et rédaction seulement.
- **Conséquences** : réversible.
- **À trancher** : les deux points ci-dessus.
- **Coût du run** : étude déléguée sur modèle léger, ~130 k tokens ; rédaction, ~15 k.

```json
{
  "besoin_principal": "Être reconnu pour son effort réel, pas pour ses kilomètres, afin de ne pas abandonner par honte",
  "besoins_secondaires": ["revenir chaque semaine", "être vu sans être exposé et encouragé par ses pairs (donner et recevoir des cœurs)", "équité perçue par les sportifs", "zéro surveillance"],
  "hypotheses": ["H1 note relative > classement pour les non-sportifs", "H2 les sportifs acceptent la même note", "H3 l'auto-déclaration suffit"],
  "question_decisive": "≥ 8/12 participent encore en semaine 4 et veulent continuer",
  "contrainte": "données UE, aucune visibilité hiérarchique, aucune API de montre disponible pour un pilote"
}
```
