# Website Deployment

Container-based deployment configuration for the website microservices.

## Structure
```
.
├── docker-compose.yml    # Service orchestration
├── nginx/
│   └── nginx.conf       # Reverse proxy config
├── scripts/
│   └── deploy.sh        # Deployment script
├── .env.example         # Environment template
└── README.md
```

## Usage

1. **Initial setup:**
   ```bash
   cp .env.example .env
   # Edit .env with actual values
   ```

2. **Deploy:**
   ```bash
   bash scripts/deploy.sh
   ```

3. **Manual operations:**
   ```bash
   docker compose pull    # Update images
   docker compose up -d   # Start services
   docker compose down    # Stop services
   docker compose ps      # Show status
   ```

## Services
- **nginx**: Reverse proxy (port 80)
- **frontend**: React application
- **api**: Backend API (future)