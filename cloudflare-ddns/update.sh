#!/bin/bash

# Cloudflare DDNS Update Script
# Updates vpn.emotionfy.app with current public IP

ZONE_ID="723bffd176241eae3d8d0920aa5ad843"
RECORD_ID="eee18fa6961be3722c1426e1aab58a15"
RECORD_NAME="vpn.emotionfy.app"
API_TOKEN="LRYn53Hjb3kFYwelxJIHF5rael32u56dM3PDnoid"

# Get current public IP
CURRENT_IP=$(curl -s https://api.ipify.org)

# Get IP in Cloudflare
CF_IP=$(curl -s -X GET "https://api.cloudflare.com/client/v4/zones/${ZONE_ID}/dns_records/${RECORD_ID}" \
  -H "Authorization: Bearer ${API_TOKEN}" \
  -H "Content-Type: application/json" | grep -oP '"content":"\K[^"]+')

# Update if different
if [ "$CURRENT_IP" != "$CF_IP" ]; then
  curl -s -X PUT "https://api.cloudflare.com/client/v4/zones/${ZONE_ID}/dns_records/${RECORD_ID}" \
    -H "Authorization: Bearer ${API_TOKEN}" \
    -H "Content-Type: application/json" \
    --data "{\"type\":\"A\",\"name\":\"${RECORD_NAME}\",\"content\":\"${CURRENT_IP}\",\"ttl\":1,\"proxied\":false}" \
    | grep -q '"success":true' && echo "$(date): Updated to ${CURRENT_IP}" || echo "$(date): Update failed"
else
  echo "$(date): IP unchanged (${CURRENT_IP})"
fi
