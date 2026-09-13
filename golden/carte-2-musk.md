# Carte 2 · Méthode Musk · « Cœur relatif »

*Golden run fait à la main le 2026-09-11, au format de la skill `methode-musk`. Entrée : les metadata de la carte 1.*

## Garde-fous

- **Besoins protégés** : reconnaissance de l'effort réel ; revenir chaque semaine ; être vu sans être exposé ; équité perçue ; zéro surveillance.
- **Détail signature, unique** : **les chiffres n'existent pas.** Ni distance, ni allure, ni fréquence cardiaque, nulle part : ni pour le groupe, ni pour l'organisateur, ni pour soi. Seules existent une note en étoiles et un cœur. Justification : Motion neutralise la comparaison mais garde les chiffres ; Apple les garde ailleurs dans l'app ; personne ne les a supprimés. C'est le seul endroit où l'idée est seule.

## 0. Premiers principes

| Fait | Source |
|---|---|
| Tous les acteurs premium calculent déjà des zones d'effort propres à chacun ; la personnalisation du calcul n'est pas une différence | Étude carte 1 (Strava, Whoop, Apple, Fitbit) |
| Aucune API de montre n'est accessible à un pilote de 12 personnes : Strava l'interdit, Garmin coûte 5 000 $, COROS est fermé, Apple et Google exigent une app native | medianama.com 2024-11 ; developer.garmin.com ; support.coros.com ; sahha.ai |
| Une charge d'entraînement se mesure sans appareil par durée × effort ressenti (échelle 1-10), méthode dite session-RPE, utilisée en science du sport depuis Foster | À sourcer par le Stratège avant la spec (référence connue, URL non relevée dans ce run) |
| Ce qui motive durablement est le progrès par rapport à soi, pas le rang | PMC5854141 ; Rawsthorne et Elliot 1999 |
| Ce que le groupe a besoin de voir pour donner un cœur : que quelqu'un a fait un effort. Pas combien | Déduit du besoin « être vu sans être exposé » |
| Le pilote dure 4 semaines et compte 12 personnes : tout ce qui sert à 10 000 utilisateurs est inutile ici | Cadrage |

## 1. Rendre les exigences moins bêtes

Les exigences implicites du brief, avec qui les a posées et pourquoi.

| # | Exigence | Posée par | Raison donnée | Besoin servi |
|---|---|---|---|---|
| E1 | Une application mobile | Le brief (« une application ») | Aucune : c'est la forme attendue | Aucun directement |
| E2 | Connexion à la montre, à Strava | Le marché | « Tout le monde le fait » | Mesure de l'effort |
| E3 | Capacité calculée par fréquence cardiaque | Le marché | Précision | Reconnaissance de l'effort réel |
| E4 | Note en étoiles relative à soi | Le fondateur | C'est l'idée | Reconnaissance de l'effort réel |
| E5 | Cœurs entre collègues, donnés et reçus, comme des kudos | Le fondateur | C'est ce qui fait avancer à plusieurs | Encouragement par les pairs |
| E6 | Chiffres absolus cachés | Le fondateur | Dignité | Signature |
| E7 | Classement d'équipe | Le marché | Émulation | Contredit le besoin |
| E8 | Défis hebdomadaires | Le marché | Rythme | Revenir chaque semaine |
| E9 | Badges, séries | Le marché | Rétention | Revenir chaque semaine |
| E10 | Tableau de bord organisateur ou manager | « L'entreprise » | Suivi | Contredit « zéro surveillance » |
| E11 | Comptes, inscription | Le marché | Identité | Aucun pour 12 collègues qui se connaissent |
| E12 | Historique personnel | Le marché | Suivi de progrès | Reconnaissance, mais réintroduit des chiffres |
| E13 | Notifications, rappels | Le marché | Rétention | Revenir chaque semaine |
| E14 | Export et suppression de ses données | Le droit | RGPD | Obligation |
| E15 | Multi-sport | Le marché | Couverture | Équité perçue |
| E16 | Un signal collectif hebdomadaire (l'équipe, pas les individus) | Le fondateur (« on avance plus loin à plusieurs ») | Appartenance | Encouragement par les pairs |

Réécrites : E3 devient « mesurer l'effort tel que la personne l'a vécu » ; E11 devient « savoir qui parle » ; E15 devient « toute activité compte, la personne la nomme ».

## 2. Supprimer

| Exigence | Sort | Raison | Besoin couvert par |
|---|---|---|---|
| E1 app mobile | **Supprimée** | Aucun besoin ne l'exige ; un bot dans le groupe Telegram existant fait tout ; une app native est la seule voie vers les montres, or les montres sont supprimées | E5, E13 par le bot |
| E2 montre, Strava | **Supprimée** | Fermé contractuellement ou financièrement ; réintroduit des données de santé de catégorie spéciale | E3 réécrite : déclaration privée durée + effort ressenti |
| E3 fréquence cardiaque | **Supprimée** | Même raison ; l'effort ressenti est une mesure validée | Session-RPE |
| E7 classement | **Supprimée** | Contredit le besoin principal | Rien à couvrir |
| E8 défis hebdo | **Supprimée** | Le pilote est le défi ; 4 semaines | E13, un rappel |
| E9 badges, séries | **Supprimée** | Rétention artificielle ; le cœur est la seule récompense | E5 |
| E10 tableau de bord | **Supprimée et interdite** | Zéro surveillance : l'organisateur voit ce que le groupe voit, rien de plus | Rien à couvrir |
| E11 comptes | **Supprimée** | Telegram identifie déjà ; le consentement se donne en message privé au bot | Bot |
| E12 historique | **Supprimée** | Réintroduit des chiffres ; la personne peut demander ses étoiles de la semaine, sans plus | E4 |
| E14 export, suppression | **Gardée, minimale** | Obligation | Une commande `/mesdonnees`, une commande `/supprimer` |
| E15 multi-sport | **Simplifiée** | Toute activité compte, la personne la nomme | E4 |

Test des dix pour cent : on a supprimé neuf exigences sur quinze. Le pilote dira ce qu'il faut remettre.

## 3. Simplifier ce qui reste

- **Une seule entrée** : la personne écrit au bot, en privé, « course 30 min effort 7 ». Trois champs : activité libre, minutes, effort ressenti de 1 à 10.
- **Une seule formule** : charge = minutes × effort. Référence personnelle = médiane des charges de la personne sur ses séances de la semaine 1 (calibration silencieuse, pas d'étoiles la première semaine). Note = charge / référence, en étoiles : moins de 0,6 ★ ; 0,6 à 0,9 ★★ ; 0,9 à 1,1 ★★★ ; 1,1 à 1,4 ★★★★ ; au-delà ★★★★★. La référence se met à jour chaque semaine sur les quatre dernières séances.
- **Une seule sortie** : dans le groupe, « Noé ★★★★ · course ». Rien d'autre. Les collègues répondent par ❤️ sur le message.
- **Le cœur, dans les deux sens** : recevoir un cœur est la récompense ; en donner en fait partie. Le bot dit en privé à celui qui a déclaré « 3 cœurs sur ta séance », et à la fin de la semaine, à chacun, « tu as donné 5 cœurs cette semaine ». Les cœurs sont le seul nombre qui existe, parce qu'ils ne mesurent pas une performance mais une attention. Aucun classement de cœurs, ni reçus ni donnés.
- **Un seul signal collectif**, le vendredi, dans le groupe, sans prénom : « cette semaine, l'équipe : 14 séances, 31 cœurs ». C'est le « à plusieurs ». Jamais de récapitulatif nominatif, jamais d'absence signalée.
- **Un seul rappel** : lundi matin, « nouvelle semaine ».
- **Une seule règle de consentement** : la première fois, le bot envoie en privé le texte d'information (ce qui est stocké, ce qui ne l'est jamais, durée, comment supprimer) et attend « J'accepte ». Sans ça, rien n'est enregistré.

## 4. Accélérer le cycle

Boucle : déclaration → étoiles dans la minute → cœur des collègues dans l'heure. Cycle du pilote : quatre semaines, une question par semaine au groupe (« ça te motive ? », réponse par bouton), la question décisive en semaine 4.

## 5. Automatiser, après le pilote

Lecture automatique depuis Apple Santé ou Health Connect (donc app native), import de séances, rappels personnalisés, plusieurs groupes. Rien de ça avant que huit personnes sur douze aient dit oui.

## Données

- **Stocké** : identifiant Telegram, prénom, date, nom d'activité, minutes, effort ressenti, référence, étoiles, consentement horodaté.
- **Jamais stocké** : fréquence cardiaque, distance, allure, position, âge, poids.
- **Conservation** : durée du pilote plus 30 jours, puis suppression ; `/supprimer` à tout moment.
- **Visibilité** : le groupe voit prénom, étoiles, activité. L'organisateur ne voit rien de plus. Minutes et effort ne sortent jamais de la conversation privée.
- **Statut** : effort ressenti et minutes restent des données relatives à l'activité physique : on les traite comme des données de santé par prudence, consentement exprès, serveur en Europe.

## Décisions du fondateur (2026-09-11)

- **Canal** : Telegram. Le bot du pilote vit dans un groupe Telegram du bureau, distinct du bot de la Régie.
- **Calibration** : silencieuse la première semaine. Aucune étoile avant que la référence personnelle existe ; le bot répond en privé « enregistré, tes étoiles arrivent la semaine prochaine ».
- **Cœurs** : mécanique à part entière, dans les deux sens (recevoir et donner), comptés en privé, jamais classés ; signal collectif du vendredi sans prénom.
- Statut de la carte : **rouverte** après le challenge du Contradicteur, puis **approuvée par le Stratège** (voir journal).

## Journal de décision (Stratège, 2026-09-11)

- **Décision 1** : référence personnelle = médiane glissante des six dernières séances, première étoile à la troisième séance. Options : médiane de la semaine 1 (carte initiale) ; médiane glissante sur six (Contradicteur). Tranché par le Stratège : la seconde, parce qu'elle sert l'équité perçue, besoin protégé, et supprime la semaine muette. Réversible en une ligne de code. Reviendrait dessus si le pilote montre des étoiles jugées imméritées par le groupe.
- **Décision 2** : plafond à quatre étoiles après deux déclarations consécutives à effort 10 ; règle invisible ; le cœur du groupe reste le vrai jugement. Options : rien (confiance) ; plafond (Contradicteur) ; validation par un pair (écartée, elle réintroduit du jugement sur la performance). Tranché par le Stratège : le plafond, parce que réversible et invisible. Reviendrait dessus si la question anonyme de fin de pilote ne montre aucune triche perçue.
- **Décision 3** : aucun message nominatif d'absence, aucun récapitulatif nominatif, ajouté au hors périmètre. Acceptée par l'auteur.
- **Réservé au fondateur** : rien dans cette carte.
- **Veto possible jusqu'à** : 24 h après l'envoi Telegram du livrable.
- **Statut** : approuvée. La carte Spécification est prête.

## Résumé de fin de carte

- **Action proposée** : approuver ces exigences ; la carte Spécification devient prête.
- **Ce qui change** : le produit n'est plus une app mais un bot de groupe ; les montres sortent du périmètre du pilote.
- **Sources** : celles de la carte 1 ; la référence session-RPE reste à sourcer.
- **Ce qui manque** : confirmation que le groupe Telegram du bureau existe, ou Slack ; sinon le bot le crée.
- **Risque** : L0.
- **À trancher** : (a) Telegram ou Slack pour le groupe ; (b) la semaine de calibration sans étoiles est-elle acceptable, ou préfère-t-on des étoiles dès la première séance sur une référence déclarée (« ma séance normale, c'est 30 min effort 6 ») ? Version prudente retenue : calibration silencieuse.
- **Coût du run** : rédaction ~12 k tokens.

```json
{
  "besoins_proteges": ["reconnaissance de l'effort réel", "revenir chaque semaine", "être vu sans être exposé", "équité perçue", "zéro surveillance"],
  "detail_signature": { "quoi": "Les chiffres n'existent pas : ni distance, ni allure, ni FC, pour personne, même pas pour soi. Étoiles et cœur seulement.", "pourquoi": "Motion neutralise la comparaison mais garde les chiffres ; Apple les garde ailleurs ; personne ne les a supprimés." },
  "faits_premiers_principes": [
    { "fait": "les API de montre sont fermées à un pilote", "source": "medianama.com 2024-11 ; developer.garmin.com ; support.coros.com ; sahha.ai" },
    { "fait": "charge = minutes × effort ressenti est une mesure validée (session-RPE)", "source": "à sourcer" },
    { "fait": "le progrès par rapport à soi motive plus que le rang", "source": "PMC5854141 ; Rawsthorne & Elliot 1999" }
  ],
  "exigences_gardees": [
    { "exigence": "note en étoiles relative à sa propre référence", "besoin": "reconnaissance de l'effort réel" },
    { "exigence": "cœur des collègues sur la note, donné et reçu, compté en privé, jamais classé", "besoin": "encouragement par les pairs" },
    { "exigence": "signal collectif hebdomadaire sans prénom (séances, cœurs de l'équipe)", "besoin": "appartenance, avancer à plusieurs" },
    { "exigence": "déclaration privée activité + minutes + effort", "besoin": "reconnaissance de l'effort réel" },
    { "exigence": "un rappel le lundi", "besoin": "revenir chaque semaine" },
    { "exigence": "consentement, export, suppression", "besoin": "obligation" },
    { "exigence": "toute activité compte", "besoin": "équité perçue" }
  ],
  "exigences_supprimees": [
    { "exigence": "app mobile", "raison": "aucun besoin ne l'exige", "besoin_couvert_par": "bot de groupe" },
    { "exigence": "montre / Strava / FC", "raison": "accès fermé, données art. 9", "besoin_couvert_par": "déclaration privée" },
    { "exigence": "classement", "raison": "contredit le besoin", "besoin_couvert_par": "—" },
    { "exigence": "défis, badges, séries", "raison": "rétention artificielle", "besoin_couvert_par": "cœur + rappel" },
    { "exigence": "tableau de bord organisateur", "raison": "surveillance", "besoin_couvert_par": "—" },
    { "exigence": "comptes, historique", "raison": "Telegram identifie ; l'historique réintroduit des chiffres", "besoin_couvert_par": "bot, étoiles de la semaine sur demande" }
  ],
  "exigences_simplifiees": [
    { "avant": "capacité mesurée par la montre", "apres": "référence = médiane des charges de la semaine 1, mise à jour sur 4 séances" },
    { "avant": "multi-sport avec catalogue", "apres": "activité nommée librement" }
  ],
  "cycle": { "boucle": "déclaration → étoiles → cœur", "duree": "une heure ; pilote 4 semaines" },
  "automatiser_apres_pilote": ["lecture Apple Santé / Health Connect", "import de séances", "rappels personnalisés", "plusieurs groupes"],
  "perimetre_mvp": "Un bot de groupe qui transforme une déclaration privée « 30 min, effort 7 » en une note en étoiles relative à ta propre semaine type, visible du groupe sans aucun chiffre, sur laquelle les collègues posent un cœur, et qui rend chaque vendredi ce que l'équipe a fait ensemble."
}
```
