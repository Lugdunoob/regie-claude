# Étude de marché déléguée · « Cœur relatif » · 2026-09-11

Produite par un agent de recherche sur modèle léger, pour la carte 1. Sources en fin.

# Étude de marché — application « performance relative à soi » pour collègues de bureau

*Recherche web, septembre 2026. Chaque affirmation est sourcée ; les URL figurent en fin de document.*

## 1. Ce qui existe déjà de proche

**Strava.** Le « Relative Effort » (ex-Suffer Score, remplacé en 2018 en collaboration avec Marco Altini) pondère le temps passé dans chaque zone de fréquence cardiaque personnelle (calculée sur le FC max estimé ou déclaré de l'utilisateur) puis normalise sur le jeu de données global de Strava pour comparer entre sports (support.strava.com/en-us/articles/15401794-relative-effort ; medium.com/strava-engineering/quantifying-effort-through-heart-rate-data-e6a0e3dd6a52). La note est donc individualisée dans son calcul, mais **les chiffres absolus ne sont jamais masqués** : distance, allure et FC restent affichés à côté du score, sauf activation du réglage « Hide Stats » qui, lui, supprime aussi le Relative Effort (support.strava.com/en-us/articles/15401987-activity-privacy-controls). C'est une fonctionnalité **payante** (Summit, ~80 $/an aux US, ~55 £ au UK, 8-11 €/mois en zone euro) (gearjunkie.com/health-fitness/strava-relative-effort ; biketips.com/strava-free-vs-paid). Les classements sociaux de Strava (segments, clubs) portent sur des temps/distances bruts, pas sur le Relative Effort — il n'y a pas de mode « équipe entreprise » équitable.

**Garmin.** Training Effect et Body Battery sont des indices personnels (VO2max, HRV, sommeil, stress) non comparables entre utilisateurs (androidauthority.com/garmin-body-battery-1209128 ; the5krunner.com/garmin-features/sleep/body-battery). Les « Challenges » Garmin Connect (steps, distance) fonctionnent en revanche sur des totaux bruts, sans ajustement de capacité (support.garmin.com — Step Challenges ; bigteamchallenge.com/faqs/connect-garmin).

**Apple Fitness.** Les anneaux Bouger/Exercice/Debout sont individualisés (objectifs caloriques et de minutes propres à chaque profil), et les **Compétitions** entre amis convertissent le pourcentage d'anneaux complétés en « points de forme » : 1 point par % ajouté, jusqu'à 600 points/jour, 4200/semaine — c'est donc déjà un mécanisme relatif à soi, assez proche de l'idée (androidpolice.com/how-to-use-apple-watch-competitions ; appletoolbox.com/apple-watch-competitions-understand-your-activity-score). Limite : compétitions **uniquement en 1 contre 1**, pas de mode équipe/entreprise, et les chiffres bruts restent visibles ailleurs dans l'app Forme.

**Whoop.** Le Strain (échelle logarithmique 0-21, basée sur l'échelle de Borg) est individualisé par rapport à la FC max et au niveau de forme personnel : deux personnes faisant le même effort obtiennent des scores différents (whoop.com/us/en/thelocker/how-does-whoop-strain-work-101 ; steradianlabs.com/blog/whoop-strain-score-explained). Whoop propose désormais **Whoop Unite**, une offre entreprise qui agrège les métriques (sommeil, stress) au niveau du groupe sans exposer les données individuelles au management, avec défis d'équipe (insider.fitt.co/whoop-enters-corporate-wellness ; fittechglobal.com/…Whoop-Unite). C'est payant (abonnement ~30 $/mois + bracelet).

**Fitbit.** Les Active Zone Minutes utilisent des zones de FC personnalisées (réserve de FC = FC max − FC repos), mais l'objectif hebdomadaire (150 min modérées/75 min intenses) est une **norme de santé publique identique pour tous**, pas un objectif calibré sur la capacité individuelle (support.google.com/googlehealth/answer/14236509). La marque Fitbit est en cours d'absorption dans Google Health depuis 2023-2026, et les défis communautaires historiques ont été supprimés (tomsguide.com — Google is slowly killing Fitbit ; fitrockr.com/the-slow-dissolution-of-fitbit).

**Nike Run Club** fonctionne sur des paliers de distance cumulée absolus (Jaune 0-49 km, Orange 50-249 km, etc.) et des records personnels, orienté auto-compétition plutôt que classement social (trophy.so/blog/nike-run-club-gamification-case-study). Aucun mode entreprise.

**Oura** produit un score de Readiness composite (0-100) strictement individuel, sans dimension sociale ni offre entreprise identifiée (ouraring.com/blog/readiness-score).

**Polar** propose Training Load Pro/Perceived Load (échelle 1-10 personnalisée) et une offre B2B via le partenariat **Polar x HeiaHeia**, avec défis d'équipe du type « Perfect Day Challenge » à points (polar.com/blog/polar-heiaheia-corporate-wellness-program).

**Constat transversal** : la personnalisation du *calcul* (zones de FC propres à chacun) est déjà la norme chez tous ces acteurs premium — mais elle sert presque toujours à nourrir un score interne à l'utilisateur, jamais à remplacer entièrement l'affichage des chiffres bruts dans un cadre social/collectif. Apple est le cas le plus proche de l'idée, mais limité au duel.

## 2. Bien-être et défis sportifs en entreprise (France/Europe)

**Squadeasy** : points gagnés par activité physique (tracker interne ou connecté), missions d'équipe et quiz bien-être ; fonctionnalité notable de « pouvoirs magiques » permettant de booster les coéquipiers plus faibles — un embryon de mécanique d'équité (squadeasy.com/fr/offre). Tarifs non publics (devis). Plus de 850 000 collaborateurs accompagnés.

**Kiplin** : jeu où le mouvement réel fait progresser un avatar virtuel, discours explicite « viser l'exercice plutôt que la performance » ; cible les équipes jeunes/dynamiques, formule freemium limitée pour petites structures (kiplin.com/fr/defi-entreprise ; myhappyjob.fr). Tarifs non publics.

**United Heroes** : défis hebdomadaires individuels/équipe, classement d'équipe en temps réel basé sur les métriques d'activité (marche, course, vélo), volet solidaire (dons). Plans Standard/Pro/Enterprise/Premium sur devis (teamupp.fr/united-heroes-prix). Point notable et discutable : leur politique de confidentialité affirme qu'« aucune des données personnelles collectées… n'entre dans le cadre des données de santé tel que défini par le RGPD » (united-heroes.com/politique-de-confidentialite-sport-heroes) — une auto-qualification qui peut être contestée si des données de fréquence cardiaque sont traitées (voir section 5). Données hébergées sur serveur basé aux États-Unis.

**Gymlib**, devenu **EGYM Wellpass** en France, organise des challenges de pas intra-entreprise sur 4 semaines, plusieurs fois par an (rentrée, QVT, janvier), plus de 1000 entreprises clientes, plus de 4000 partenaires sport/bien-être (blog.gymlib.com ; fitness-challenges.com/gymlib-devient-egym-wellpass).

**Teamupp** : app QVT « 360° » combinant défis sportifs, ateliers, quiz et CSR ; ciblage 50-500 salariés, budget plus élevé, 4,6/5 sur l'App Store (teamupp.fr/application-challenge-sportif-entreprise).

**Virgin Pulse / Personify Health** (fusion en cours) : crédits bien-être jusqu'à 400 $/an + 50 $ pour bilan de santé, points quotidiens/mensuels/trimestriels, périodes « triple points » (employeebenefits.ri.gov ; today.marquette.edu). C'est l'héritier du **Global Corporate Challenge** (GCC, fondé 2004, racheté par Virgin Pulse en 2016) : équipes de 7, programme pédomètre de 100 jours ; une étude a montré une réduction de la détresse psychologique chez les participants (pmc.ncbi.nlm.nih.gov/articles/PMC10002186).

**Vitality** (programme lié à l'assurance santé/vie) : les « Vitality Points » issus d'activités trackées déterminent un statut qui conditionne remises de prime et récompenses partenaires — logique d'assurance comportementale plus que de challenge collègues pur (wecovr.com/guides/vitality-health-points-system-is-it-worth-the-hassle).

**Deux acteurs supplémentaires notables** : **YuLife** (assurtech UK) gamifie marche/vélo/méditation via une monnaie virtuelle (YuCoin), défis d'équipe, 80 % d'engagement quotidien revendiqué et +50 % d'activité physique auto-déclarée (yulife.com/blog/how-gamification-transforms-group-health-life-insurance ; un essai contrôlé randomisé est en cours de publication, medrxiv.org/content/10.64898/2026.05.31.26354543v1.full). Et **Motion for Teams** (motion-app.com/motion-for-teams), détaillé en section 6, qui est en réalité le concurrent le plus proche du concept étudié.

**Constat sur le prix/taille** : aucun acteur ne publie de grille tarifaire claire par salarié hors Motion (12-15 $/utilisateur actif/mois, minimum 300 $/mois, cible dès 10 salariés — motion-app.com/motion-for-teams). Les autres fonctionnent en devis, avec un seuil pragmatique observé « dès 10 collaborateurs » pour un impact perceptible (teamupp.fr/application-challenge-sportif-entreprise). Le traitement des données de santé est rarement documenté publiquement, à l'exception de Whoop Unite et Motion qui revendiquent explicitement une agrégation empêchant le management de voir les métriques individuelles.

## 3. Ce que dit la recherche

La théorie des buts d'accomplissement distingue les **buts de maîtrise** (progresser par rapport à soi) des **buts de performance** (se démarquer des autres) ; la littérature montre que les buts de maîtrise favorisent l'appréciation du défi, la persévérance et la motivation autonome au sens de la théorie de l'autodétermination, alors que l'orientation vers l'ego est associée à la motivation extrinsèque (pmc.ncbi.nlm.nih.gov/articles/PMC5854141 ; pmc.ncbi.nlm.nih.gov/articles/PMC5854211). La méta-analyse historique de Rawsthorne & Elliot relie les buts d'approche-maîtrise à la motivation intrinsèque (selfdeterminationtheory.org/SDT/documents/1999_RawsthorneElliot_PSPR.pdf).

Sur les classements : une étude publiée dans Frontiers in Public Health (2026, n=1019 étudiants) montre que l'usage des leaderboards stimule la comparaison sociale (β=0,298) et l'activité physique (β=0,322), avec un effet indirect net négatif sur le stress perçu (β=−0,120), mais souligne que « les effets des leaderboards sont probablement hautement hétérogènes selon les individus » (frontiersin.org/…/fpubh.2026.1794299/full). Une revue académique dédiée aux leaderboards dans les apps fitness conclut que « les développeurs doivent trouver des moyens de motiver chaque utilisateur, pas seulement les meilleurs », les classements purs risquant de démotiver ceux qui se sentent durablement distancés (researchgate.net/publication/309557443). Une étude UCL/Loughborough analysant près de 59 000 posts sur X a identifié un phénomène de honte et de culpabilité chez les utilisateurs n'atteignant pas leurs objectifs, conduisant parfois à l'abandon pur et simple des trackers (lbc.co.uk/article/f04b9a85ea294981b27307be6867ce19-5HjdFjq_2).

Sur l'efficacité des challenges d'entreprise : une revue parapluie 2025 du Lancet Public Health sur les interventions en milieu professionnel conclut que les interventions gamifiées réduisent la sédentarité et l'activité légère mais **qu'aucune n'améliore de façon cohérente l'activité physique modérée à intense** (thelancet.com/journals/lanpub/article/PIIS2468-2667(25)00038-6). L'essai randomisé de Song & Baicker (JAMA, ~32 000 salariés d'un grand distributeur américain, 160 sites) a montré qu'un programme de bien-être multicomposant augmentait l'exercice auto-déclaré mais n'avait aucun effet significatif sur les mesures cliniques, les dépenses de santé ou l'absentéisme à 18 mois (jamanetwork.com/journals/jama/fullarticle/2730614). Enfin, l'étude sur le Global Corporate Challenge a montré une réduction mesurable de la détresse psychologique sur un programme pédomètre de 4 mois (pmc.ncbi.nlm.nih.gov/articles/PMC10002186).

## 4. Accès aux données

**Strava** : depuis le 11 novembre 2024, les nouvelles conditions API interdisent explicitement (clause 5.3) l'usage des données Strava pour l'entraînement de modèles d'IA, et **interdisent aux applications tierces d'afficher les données d'activité d'un utilisateur à quiconque d'autre que lui-même** (medianama.com/2024/11/223-strava-revises-api-rules ; cybernews.com/security/strava-changes-api-agreement). Cette clause rend Strava **juridiquement inutilisable** comme backend pour afficher une comparaison entre collègues.

**Garmin Health API** : accès gratuit en développement/test, mais l'accès production nécessite des frais administratifs forfaitaires de 5000 $ plus un processus de vetting partenaire (aifitnessapi.com/pricing/garmin-api-pricing ; developer.garmin.com/gc-developer-program). Disproportionné pour 12 personnes.

**COROS** : API partenaire OAuth2 réservée aux plateformes déjà établies avec base d'utilisateurs démontrée, société enregistrée, conformité sécurité (support.coros.com/hc/en-us/articles/53181766856724-Partner-API-Access) — porte fermée pour un pilote naissant.

**Apple HealthKit / Google Health Connect** : frameworks on-device uniquement (pas d'API serveur), consentement par type de donnée directement géré par l'OS, gratuits pour un développeur (hors 99 $/an compte développeur Apple) (sahha.ai/blog/healthkit-vs-health-connect-difference).

**Polar AccessLink** : self-service, OAuth, sans frais de vetting préalable connu, expose des données riches (HRV brute) (openwearables.io/blog/polar-api-training-hrv-nightly-recharge-data).

**Pour un pilote de 12 personnes**, la solution la plus simple et la plus légale est de **construire une app maison lisant HealthKit (iPhone/Apple Watch) et Health Connect (Android)** en s'appuyant sur le consentement natif de l'OS, en excluant Strava (interdiction contractuelle d'affichage tiers), en excluant Garmin (coût prohibitif) et en excluant COROS (accès réservé aux plateformes matures) ; Polar reste une option d'appoint si une partie du groupe possède déjà ces montres.

## 5. Données de santé et RGPD

La fréquence cardiaque et les indicateurs de performance sportive sont qualifiés de données de santé au sens de l'article 9 RGPD, dont le traitement est en principe interdit sauf exception (haas-avocats.com/…/la-performance-des-sportifs-fait-aussi-lobjet-de-collecte ; cnil.fr/fr/sportifs-quels-cas-et-conditions-collecte-des-donnees-de-sante). Pour un sportif amateur, la CNIL exige un **consentement exprès libre, spécifique, univoque et éclairé** dès qu'un objet connecté collecte ces données (cnil.fr/fr/sport-amateur-hors-contrat/tester-votre-conformite-au-rgpd/reutilisation). Dans un cadre employeur, la CNIL a explicitement mis en garde contre l'usage d'objets « bien-être » distribués par l'entreprise, notamment le risque de traitements différenciés (assurance) et de détournement des données (ex. données de sommeil retenues contre un salarié en cas d'accident) malgré les « bonnes intentions » affichées (axess.fr/blog/sante-au-travail-sante/objets-connectes-opportunite-ou-risque-pour-le-secteur-de-la-sante-au-travail ; cnil.fr/fr/technologies/objets-connectes). Plus largement, toute surveillance de salariés doit respecter les principes de proportionnalité, transparence et finalité légitime du droit du travail (legisocial.fr/vie-entreprise/surveillance-des-salaries). Conséquence pratique pour le pilote : le consentement d'un collègue sollicité par sa hiérarchie est fragile au regard du critère de « liberté » du consentement RGPD (déséquilibre de pouvoir) ; il faut donc un opt-in réellement volontaire, une visibilité strictement agrégée pour le management (à l'image des promesses de Whoop Unite et Motion), et une durée de conservation limitée.

## 6. Le trou

Il existe un concurrent direct et déjà positionné exactement sur ce créneau : **Motion** (motion-app.com), start-up britannique fondée en 2021 par George Green (société *Always Together Limited*, Angleterre), ~50 000 utilisateurs actifs, 4,6/5 sur l'App Store. Son système d'« activity points » calcule le pourcentage d'un objectif personnel glissant sur 12 semaines, avec l'exemple explicite : « Sarah à 120 % de son objectif bat Mike à 98 %, même avec moins de pas au total » (motion-app.com/effort-based-fitness-goals). Son offre **Motion for Teams** cible spécifiquement les entreprises dès 10 salariés (12-15 $/utilisateur actif/mois, minimum 300 $/mois), revendique l'absence de classement de fitness ou de métriques individuelles visibles par les managers, et inclut la marche, la nage, le fauteuil roulant, le yoga (motion-app.com/motion-for-teams). C'est, sur le papier, quasiment le produit décrit par la demande.

Cela dit, le trou n'est pas totalement comblé : Motion reste un acteur anglophone confidentiel (pas de présence identifiée en France/Europe francophone, pas de couverture presse ou de levée de fonds significative retrouvée), ses communications ne confirment pas un masquage *total* des chiffres bruts pour l'utilisateur lui-même (seule la comparaison inter-personnes semble neutralisée), et aucune trace d'une esthétique « étoiles/cœur » minimaliste comme décrite n'a été trouvée nulle part. Apple Fitness pratique une logique de points relatifs (% d'anneaux) mais uniquement en duel, sans jamais masquer les chiffres ailleurs dans l'app. Tous les acteurs français de bien-être en entreprise (Squadeasy, Kiplin, United Heroes, Gymlib, Teamupp) restent fondés sur des totaux bruts (pas, km) ou sur un modèle d'agrégation d'équipe qui dilue plutôt qu'il ne convertit la performance individuelle en équivalent d'effort ; seul Squadeasy introduit un embryon d'équité via ses « pouvoirs magiques » de boost entre collègues.

**Conclusion honnête** : le trou existe mais il est étroit et déjà partiellement occupé — par un acteur anglophone de niche (Motion) qui a la mécanique et le positionnement B2B, mais ni la présence française, ni l'épure visuelle radicale (chiffres absolus totalement invisibles, note unique en étoiles/cœur) revendiquée dans la demande. La proposition de valeur différenciante réaliste n'est donc pas « inventer une catégorie », mais « localiser, simplifier à l'extrême l'interface, et pousser plus loin l'invisibilisation des chiffres absolus » qu'un concurrent anglophone naissant.

## 7. Synthèse en 15 lignes

Trois raisons d'y aller : (1) la recherche en psychologie du sport valide solidement la supériorité motivationnelle des buts de maîtrise sur les buts de performance pour l'engagement durable et non-honteux ; (2) tous les gros acteurs (Strava, Garmin, Fitbit, incumbents français) restent ancrés sur des métriques brutes ou des classements bruts malgré des scores personnalisés en interne — la fenêtre UX/positionnement est réelle ; (3) l'unique concurrent proche (Motion) est confidentiel, anglophone et absent du marché francophone, laissant un espace de localisation et de design.

Trois raisons de ne pas y aller : (1) l'efficacité des challenges gamifiés sur l'activité physique modérée-intense reste faible dans les méta-analyses récentes (Lancet 2025, JAMA 2019) — le risque est de construire une belle mécanique sans effet de santé démontré ; (2) l'accès aux données est un vrai obstacle : Strava interdit contractuellement l'affichage à des tiers depuis novembre 2024, Garmin facture 5000 $, COROS exige une base d'utilisateurs déjà établie — un pilote léger doit se rabattre sur HealthKit/Health Connect et une app maison, ce qui alourdit le développement ; (3) le traitement de données de fréquence cardiaque entre collègues, sous l'autorité hiérarchique de celui qui initie le programme, pose un risque RGPD/CNIL sérieux sur la liberté du consentement et le risque de surveillance déguisée.

La question qu'un pilote de 4 semaines avec 12 collègues doit trancher : **le consentement et l'agrégation peuvent-ils être rendus assez robustes (opt-in hors hiérarchie, aucune donnée individuelle visible même par l'organisateur, source de données choisie par chacun) pour que le programme soit expérimenté sans jamais devenir, de fait, un outil de surveillance ou de pression sociale déguisée** — car c'est cette réponse, plus que la mécanique de notation elle-même, qui déterminera si le concept est déployable au-delà du prototype.

---

### URL consultées

- https://support.strava.com/en-us/articles/15401794-relative-effort
- https://medium.com/strava-engineering/quantifying-effort-through-heart-rate-data-e6a0e3dd6a52
- https://gearjunkie.com/health-fitness/strava-relative-effort
- https://the5krunner.com/2025/11/17/strava-relative-effort-guide-tss-2025/
- https://support.strava.com/en-us/articles/15401987-activity-privacy-controls
- https://biketips.com/strava-free-vs-paid/
- https://www.androidauthority.com/garmin-body-battery-1209128/
- https://the5krunner.com/garmin-features/sleep/body-battery/
- https://support.garmin.com/en-US/?faq=fU0T2AppaJ68D0sQEdlDK7
- https://www.bigteamchallenge.com/faqs/connect-garmin
- https://www.androidpolice.com/how-to-use-apple-watch-competitions/
- https://appletoolbox.com/apple-watch-competitions-understand-your-activity-score/
- https://www.whoop.com/us/en/thelocker/how-does-whoop-strain-work-101/
- https://apps.steradianlabs.com/blog/whoop-strain-score-explained
- https://insider.fitt.co/whoop-enters-corporate-wellness/
- https://www.fittechglobal.com/fit-tech-news/Whoop-takes-on-employee-burnout-with-wellness-platform-Whoop-Unite/349626
- https://support.google.com/googlehealth/answer/14236509
- https://www.tomsguide.com/wellness/smartwatches/google-is-slowly-shuttering-fitbit-should-you-still-buy-one
- https://www.fitrockr.com/the-slow-dissolution-of-fitbit/
- https://trophy.so/blog/nike-run-club-gamification-case-study
- https://ouraring.com/blog/readiness-score/
- https://www.polar.com/blog/polar-heiaheia-corporate-wellness-program/
- https://www.squadeasy.com/fr/offre
- https://www.kiplin.com/fr/defi-entreprise/
- https://www.myhappyjob.fr/sport-connecte-en-entreprise-les-3-applis-qui-font-bouger-les-salaries-en-samusant/
- https://teamupp.fr/united-heroes-prix/
- https://www.united-heroes.com/politique-de-confidentialite-sport-heroes
- https://blog.gymlib.com/fr/sujets-rh/sante/infographie-challenge-pas-gymlib-bilan/
- https://fitness-challenges.com/gymlib-devient-egym-wellpass/
- https://teamupp.fr/application-challenge-sportif-entreprise/
- https://employeebenefits.ri.gov/sites/g/files/xkgbur816/files/2025-01/2025%20Personify%20Health%20Activities%20Flier.pdf
- https://today.marquette.edu/2020/08/wellness-activities-will-be-worth-triple-points-in-virgin-pulse-aug-31-sept-18
- https://pmc.ncbi.nlm.nih.gov/articles/PMC10002186/
- https://wecovr.com/guides/vitality-health-points-system-is-it-worth-the-hassle/
- https://yulife.com/blog/how-gamification-transforms-group-health-life-insurance/
- https://www.medrxiv.org/content/10.64898/2026.05.31.26354543v1.full
- https://motion-app.com/motion-for-teams/
- https://motion-app.com/effort-based-fitness-goals/
- https://motion-app.com/about/
- https://pmc.ncbi.nlm.nih.gov/articles/PMC5854141/
- https://pmc.ncbi.nlm.nih.gov/articles/PMC5854211/
- https://selfdeterminationtheory.org/SDT/documents/1999_RawsthorneElliot_PSPR.pdf
- https://www.frontiersin.org/journals/public-health/articles/10.3389/fpubh.2026.1794299/full
- https://www.researchgate.net/publication/309557443_Gamification_in_Fitness_Apps_How_do_Leaderboards_influence_Exercise
- https://www.lbc.co.uk/article/f04b9a85ea294981b27307be6867ce19-5HjdFjq_2/
- https://www.thelancet.com/journals/lanpub/article/PIIS2468-2667(25)00038-6/fulltext
- https://jamanetwork.com/journals/jama/fullarticle/2730614
- https://www.medianama.com/2024/11/223-strava-revises-api-rules-to-restrict-data-sharing-and-training-ai-models-using-user-data/
- https://cybernews.com/security/strava-changes-api-agreement/
- https://aifitnessapi.com/pricing/garmin-api-pricing
- https://developer.garmin.com/gc-developer-program/
- https://support.coros.com/hc/en-us/articles/53181766856724-Partner-API-Access
- https://sahha.ai/blog/healthkit-vs-health-connect/
- https://openwearables.io/blog/polar-api-training-hrv-nightly-recharge-data
- https://www.cnil.fr/fr/sportifs-quels-cas-et-conditions-collecte-des-donnees-de-sante
- https://www.cnil.fr/fr/sport-amateur-hors-contrat/tester-votre-conformite-au-rgpd/reutilisation
- https://www.haas-avocats.com/reglementation/cnil/la-performance-des-sportifs-fait-aussi-lobjet-de-collecte/
- https://www.axess.fr/blog/sante-au-travail-sante/objets-connectes-opportunite-ou-risque-pour-le-secteur-de-la-sante-au-travail
- https://www.cnil.fr/fr/technologies/objets-connectes
- https://www.legisocial.fr/vie-entreprise/surveillance-des-salaries/procedes-surveillance-salaries.html
- https://motion-app.com/motion-for-teams/ (tarification et taille minimale)