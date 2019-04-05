# Exploitation du RPPS avec PostgreSQL 

Analyse et exposition du RPPS avec une base PostgreSQL

Metabase est accessible à l'adresse [http://10.200.15.25:3000](http://10.200.15.25:3000).

## Installation

Installer Docker et Docker-Compose

Sur le serveur, créer le fichier d'environnement `.env` avec la commande `cp env-template .env`.
L'éditer avec des mots de passes pour se connecter aux bases.  

Démarrage des services `docker-compose up -d`

Télécharger les données `download_data.sh`

Peupler ou supprimer la table postgres.

    docker-compose exec postgres bash /home/data/load_table.sh
    
    docker-compose exec postgres bash /home/data/drop_table.sh
