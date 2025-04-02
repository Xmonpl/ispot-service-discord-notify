# iSpot Service Status Notifier

This is a simple Bash script that runs on Linux and checks your service status from [iSpot](https://www.ispot.pl/) every 5 minutes. It sends the current status to a Discord webhook.

## 🚀 Features

- Sends a POST request with your order and phone number to the iSpot service status endpoint.
- Parses the returned JSON to extract the current status.
- Sends the status message to your Discord webhook.
- Runs in an infinite loop with a 5-minute interval.

## 📋 Requirements

- Bash
- `curl`
- A Discord webhook URL

## ⚙️ Configuration

Edit the script and update these variables at the top:

```bash
ORDER_ID="your_order_number"
PHONE_NUMBER="your_phone_number"
DISCORD_WEBHOOK_URL="your_discord_webhook_url"
```
## 💡 Usage 

```bash
git clone https://github.com/Xmonpl/ispot-service-discord-notify
cd ispot-service-discord-notify
chmod +x service_status_checker.sh
nohup ./service_status_checker.sh &
```
