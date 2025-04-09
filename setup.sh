#!/bin/bash

echo "🚀 Avvio del setup per Strapi in dev mode..."

# Controlla se Docker è installato
if ! [ -x "$(command -v docker)" ]; then
  echo "❌ Errore: Docker non è installato." >&2
  exit 1
fi

# Controlla se Docker Compose è installato
if ! [ -x "$(command -v docker-compose)" ]; then
  echo "❌ Errore: Docker Compose non è installato." >&2
  exit 1
fi

# Crea un file .env se non esiste
if [ ! -f ./@food-cms-strapi/.env ]; then
  echo "❌ Errore: Devi creare il file .env" >&2
  exit 1
fi

# Carico il file .env
source ./food-cms-strapi/.env

# Build e avvio dei container
echo "🐳 Avvio dei container Docker..."
docker-compose -f ./food-cms-strapi/docker-compose-strapi-dev.yml up -d


# Attendere qualche secondo per assicurarsi che tutto sia avviato
sleep 5

echo "✅ Setup completato! Puoi accedere a Strapi su http://${HOST}:${PORT}"
