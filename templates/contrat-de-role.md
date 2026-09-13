# Contrat de rôle (un bloc par SOUL.md)

Chaque agent possède **une décision**, rend **un livrable**, et sait **où il s'arrête**.
Une instruction large (« fais du bon travail ») produit huit agents interchangeables ;
un contrat produit une équipe. Format imposé, cinq lignes, dans chaque `SOUL.md` :

- **Décide** : la seule décision dont ce agent répond.
- **Lit** : les cartes parentes, fichiers et champs de `metadata` qu'il a le droit d'utiliser.
- **Rend** : l'artefact exact que le agent suivant reçoit (nom de fichier + champs `metadata`).
- **Ne fait jamais** : les décisions qui appartiennent à un autre agent ou à la liste réservée.
- **Terminé quand** : conditions observables qui rendent la passation complète.

Règle de passation : si un champ requis manque dans ce que le agent reçoit, il **renvoie
la carte à l'étape précédente** (le renvoi de la carte (`statut: changements_demandes`)) au lieu de combler le trou
par une hypothèse plausible. Un trou comblé en silence traverse toute la chaîne.
