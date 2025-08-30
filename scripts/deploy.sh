#!/bin/bash
set -e

echo "🚀 Deploying services..."

# Pull latest images
docker compose pull

# Restart services
docker compose up -d

# Show running services
docker compose ps

echo "✅ Deployment complete!"