# Exploitation du RPPS avec PostgreSQL 

Analyse et exposition du RPPS avec une base PostgreSQL


## Installation du projet


Création du fichier d'environnement `.env` avec les secrets pour se connecter aux bases.

    cp .env-template .env



## Prérequis installations serveur

- Docker 


    wget -qO- https://get.docker.com/ | sh


- Docker-Compose
  
    
    sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    
    sudo chmod +x /usr/local/bin/docker-compose
