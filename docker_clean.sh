#!/bin/bash

# Arrêter et supprimer les conteneurs
docker compose down

# Supprimer les images
docker rmi nuxt_dev

# Supprimer les volumes
docker volume rm $(docker volume ls -q)

# Supprimer les réseaux non utilisés
docker network prune -f

echo "Nettoyage terminé."