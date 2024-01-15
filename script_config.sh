#!/bin/bash

# Définir le chemin de votre fichier .env
fichier_env=".env"

# Vérifier si le fichier .env existe
if [ -f "$fichier_env" ]; then
    # Créer une carte de configuration
    carte_configuration=$(awk -F '=' '/^[^#]/ {print $1 "=" $2}' "$fichier_env")

    # Afficher la carte de configuration
    echo "Carte de Configuration :"
    echo "$carte_configuration"
else
    echo "Erreur : fichier .env introuvable."
fi
