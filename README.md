Remind to turn off the "Pop-ups" options to prevent to see vanilla's one

Algo
Liste d'items
    - id: CollectibleType
    - isUnlocked: bool
    - achievement: number

Au chargement, pour chaque item dans la liste d'items,
    si l'item n'est pas débloqué
        utiliser ItemPool:RemoveCollectible avec l'id de l'item pour le retirer de la pool d'items

