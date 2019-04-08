# Exploration du RPPS avec Metabase et PostgreSQL 

Démonstration de l'outil de BI Metabase pour explorer le répertoire des professsionnels de santé (RPPS+ADELI). 

On utilise une base PostgreSQL comme source de données, une autre base PostgreSQL comme backend de Metabase. 
Ces différents services sont orchestrés avec Docker-Compose.

## Installation

Prérequis : installer Docker et Docker-Compose

Cloner le projet.

En production, créer le fichier d'environnement `.env` depuis le template (`cp env-template .env`). 
Ajouter des mots de passes dans ce fichier pour protéger la connexion aux bases.  

- Démarrer es services Docker : `docker-compose up -d`
- Télécharger les données : `./download_data.sh`
- Peupler la table postgres : `docker-compose exec postgres bash /home/data/load_table.sh`
- Se connecter à Metabase ([http://localhost:3000](http://localhost:3000), ou adresse du serveur)
    - créer un compte administrateur
    - connecter la base PostgreSQL contenant les données (paramètre `postgres` partout)
        - Nom : `postgres` (ou peu importe)
        - Hôte : `postgres` (hôte de la base sur le réseau créé par Docker-Compose)
        - Port : `5432`
        - Nom de la base de données : `postgres`
        - Nom de l'utilisateur : `postgres`
        - Mot de passe : `<VIDE>` (ou celui indiqué dans `.env`)
    - aller dans le tableau d'administration
        - Si la base n'a pas été ajoutée (bug ?), recommencer
        - Dans `General`, modifier le paramètre `Adaptation des noms de table et de champ` par `Remplacer seulement les soulignés et tirés par un espace`
    - C'est prêt pour explorer, en tant qu'utilisateur ou administrateur

## Autres manipulations
 
Se connecter à l'invite de commande postgres : `docker-compose exec postgres psql -U postgres`

Supprimer la table postgres : `docker-compose exec postgres bash /home/data/drop_table.sh`

Arrêter les conteneurs : `docker-compose stop`

Pour aller plus loin, se référer à la documentation de [Docker-Compose](https://docs.docker.com/compose/reference/overview/).
