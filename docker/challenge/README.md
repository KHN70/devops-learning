# Multi-Container Docker Challenge

A production-style, three-tier microservice architecture built to master container orchestration, reverse proxy load balancing, horizontal scaling, and data persistence using Docker Compose.

## 🏗️ Architecture & Component Stack

- **Reverse Proxy / Load Balancer (`Nginx`):** 
  - Intercepts incoming HTTP traffic on port `5000`.
  - Uses an upstream `round-robin` configuration to distribute requests evenly across the active web workers.
- **Stateless Compute Tier (`Flask`):** 
  - Python 3.8-slim web application.
  - Horizontally scaled using Docker Compose (`--scale web=3`).
  - Follows Twelve-Factor app principles with decoupled configuration via environment variables (`REDIS_HOST`, `REDIS_PORT`).
- **Persistent Data Tier (`Redis`):** 
  - Centralized state and caching layer.
  - Backed by Docker named volumes (`redis-data:/data`) to ensure application data survives container teardowns and restarts.

## 🚀 Quick Start

1. Ensure you have Docker and Docker Compose installed.
2. Navigate to the `docker/challenge` directory.
3. Build and spin up the entire stack with horizontal scaling enabled:
   ```bash
   docker-compose up --scale web=3 --build