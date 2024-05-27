#!/bin/bash

# Fonction pour féliciter l'utilisateur
congratulate() {
    echo "Félicitations ! Vous avez deviné correctement le nombre de fichiers dans le répertoire."
}

# Obtention du nombre de fichiers dans le répertoire
file_count=$(ls -l | grep "^-" | wc -l)

echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"

# Boucle jusqu'à ce que l'utilisateur devine correctement
while true; do
    read guess
    if [[ $guess -eq $file_count ]]; then
        congratulate
        exit
    elif [[ $guess -lt $file_count ]]; then
        echo "Votre estimation est trop basse. Essayez à nouveau :"
    else
        echo "Votre estimation est trop haute. Essayez à nouveau :"
    fi
done
