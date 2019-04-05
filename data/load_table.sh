#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username postgres <<-EOSQL

	CREATE TABLE public.professionnel_sante
			(
			categorie_professionnelle TEXT,
			civilite TEXT,
			civilite_exercice TEXT,
			commune TEXT,
			identifiant TEXT,
			nom TEXT,
			nom_prénom TEXT,
			prefix_search_string_full TEXT,
			prefix_search_string_minimal TEXT,
			profession TEXT,
			prénom TEXT,
			specialité TEXT,
			type_identifiant TEXT
			);

	\COPY professionnel_sante FROM '/home/data/professionnel_sante.csv' WITH (FORMAT csv, DELIMITER ';', HEADER);

EOSQL