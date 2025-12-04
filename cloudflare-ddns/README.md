# Cloudflare DDNS

Updates `vpn.emotionfy.app` with current public IP.

## Install

```bash
sudo mkdir -p /opt/cloudflare-ddns
sudo cp update.sh /opt/cloudflare-ddns/
sudo chmod +x /opt/cloudflare-ddns/update.sh
```

## Cron (every 5 min)

```bash
(crontab -l 2>/dev/null; echo "*/5 * * * * /opt/cloudflare-ddns/update.sh >> /var/log/ddns.log 2>&1") | crontab -
```

## Test

```bash
/opt/cloudflare-ddns/update.sh
```
