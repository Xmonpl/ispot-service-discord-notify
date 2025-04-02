#!/bin/bash

# 🔁 Input data
ORDER_ID="xxxxx"
PHONE_NUMBER="xxxxx"
DISCORD_WEBHOOK_URL="https://discord.com/api/webhooks/xxx/yyy"

# 🔁 Infinite loop every 5 minutes
while true; do
    # 📨 Send POST request with form-data
    RESPONSE=$(curl -s -X POST https://services.ispot.pl/scripts/get-order-status.php \
        -F "order=$ORDER_ID" \
        -F "phone=$PHONE_NUMBER")

    # 🔍 Extract "status" field from JSON
    STATUS=$(echo "$RESPONSE" | grep -oP '"status"\s*:\s*"\K[^"]+')

    # 💬 Send message to Discord webhook
    curl -s -H "Content-Type: application/json" \
        -X POST \
        -d "{\"content\": \"📦 Order status: $STATUS\"}" \
        "$DISCORD_WEBHOOK_URL"

    # 💤 Wait 5 minutes
    sleep 300
done
