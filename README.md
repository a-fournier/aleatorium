Remind to turn off the "Pop-ups" options to prevent to see vanilla's one

Algo
Liste d'items
    - id: CollectibleType
    - isUnlocked: bool
    - achievement: number

Au chargement, pour chaque item dans la liste d'items,
    si l'item n'est pas débloqué
        utiliser ItemPool:RemoveCollectible avec l'id de l'item pour le retirer de la pool d'items

Quand on tire un item, on relance parmis les items débloqués, selon le système vanilla
- Prendre en compte le poids
- Prendre en compte la pool
- Prendre en compte les items vues
- Prendre en compte les altérations (chaos, greed mod, sacred orbe, eden souls)

Problème :
- Il sera difficile de voir des items faussement débloqué, car la probabilité de tomber sur un item faussement débloqué 
est égale à la probabilité de tomber sur un item faussement non déloqué mulitplié par la probabilité de tomber sur l'item 
faussement débloqué

Dernière fois : 
J'ai ajouté le système pour séléctionner un item aléatoirement
J'ai fais le système de sauvegarde
J'ai ajouté des items à débloquer

Prochainement :

Features :
Ajouter tous les items à débloquer
