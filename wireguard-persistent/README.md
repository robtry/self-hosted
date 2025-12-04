# WireGuard VPN

## Network

| Device | Role | VPN IP | LAN IP |
|--------|------|--------|--------|
| deborah | Server | 10.14.14.1 | 192.168.100.4 |
| damaris | Peer | 10.14.14.2 | Oracle static IP |
| macm1 | Peer | 10.14.14.3 | - |

## Endpoint

- **Domain:** `vpn.emotionfy.app`
- **Port:** `51820/UDP`

## Deploy

```bash
sudo systemctl enable wg-quick@wg0
sudo systemctl start wg-quick@wg0
```
