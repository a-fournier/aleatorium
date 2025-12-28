Remind to turn off the "Pop-ups" options to prevent to see vanilla's one

Algo
Liste d'items
    - id: CollectibleType
    - isUnlocked: bool
    - achievement: number

Au chargement, pour chaque item dans la liste d'items,
    si l'item n'est pas débloqué
        utiliser ItemPool:RemoveCollectible avec l'id de l'item pour le retirer de la pool d'items

Dernière fois : 
J'ai ajouté le système pour séléctionner un item aléatoirement
J'ai fais le système de sauvegarde

Prochainement :
FIX :
Quand y' a plus d'item à débloquer
[INFO] - Error in "PostEntityKill" call: ...Isaac Rebirth/mods/aleatorium/src/items/item_manager.lua:21: bad argument #1 to 'random' (interval is empty)

Features :
Ajouter tous les items à débloquer
