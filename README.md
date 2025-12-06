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

## Services

### AdGuard Home
DNS server with ad and tracking blocking.

- Port: 3000 (web), 53 (DNS)
- Config: `/opt/adguardhome/`

### Speedtest Tracker
Automatic internet speed monitoring.

- Port: 3100
- Config: `/opt/speedtest-tracker/config`
- Schedule: every 3 hours
