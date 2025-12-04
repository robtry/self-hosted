# Self-Hosted Services

## Prerequisites

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install Docker
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER
```

## Deploy Docker Services

```bash
cd <service-folder>
docker compose up -d
```
