# Self-Hosted Services

## Prerequisites

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install Docker
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER

# Install WireGuard
sudo apt install -y wireguard wireguard-tools

# Enable IP forwarding
sudo sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/' /etc/sysctl.conf
sudo sysctl -p
```

## Setup Order

1. **wireguard-persistent** - VPN server
2. **cloudflare-ddns** - Keep domain updated with public IP
3. **adguardhome** - DNS with ad blocking
4. **Other services** - As needed

## Deploy Docker Services

```bash
cd <service-folder>
docker compose up -d
```

## Router Config

- Port forward `51820/UDP` → `192.168.100.4`
