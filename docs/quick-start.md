# Quick start

_Get an API key and make your first request to Apixo in two minutes._

Apixo gives you one API key and one base URL for every model we offer. It speaks **both** the OpenAI and the Anthropic API formats, so almost any tool or SDK works by changing two settings.

| Setting | Value |
|---|---|
| Base URL (OpenAI clients) | `https://api.apixoai.online/v1` |
| Base URL (Anthropic clients) | `https://api.apixoai.online` |
| API key | your `sk-apixo-YOUR_KEY` key |

## 1. Get your key

[Sign in](https://apixoai.online/login) with Telegram — or open the [Telegram bot](https://t.me/Apixo_bot) and press **Start**. Your key is created instantly and shown in your [dashboard](https://apixoai.online/dashboard).

Keep it secret: anyone with the key can spend your balance. You can rotate it any time from the dashboard or with `/regenerate` in the bot.

## 2. Make a request

```bash
export APIXO_API_KEY="sk-apixo-YOUR_KEY"

curl https://api.apixoai.online/v1/chat/completions \
  -H "Authorization: Bearer $APIXO_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model": "gpt-6-astra", "messages": [{"role": "user", "content": "Hello!"}]}'
```

Or with the Anthropic format:

```bash
curl https://api.apixoai.online/v1/messages \
  -H "x-api-key: $APIXO_API_KEY" \
  -H "anthropic-version: 2023-06-01" \
  -H "Content-Type: application/json" \
  -d '{"model": "claude-fable-5", "max_tokens": 512, "messages": [{"role": "user", "content": "Hello!"}]}'
```

## 3. Connect your tool

Pick your tool in the sidebar — each guide has a ready-to-paste config. In the [dashboard](https://apixoai.online/dashboard/setup) you can download these files with your key already filled in.

## 4. Top up

New accounts may receive a small trial credit that works on selected models. [Top up](https://apixoai.online/dashboard/billing) with crypto to unlock every model — your balance is credited after one blockchain confirmation. Requests need a balance of at least $0.01.

> **Tip:** list the models available to you with `curl https://api.apixoai.online/v1/models`.

---
[← All docs](README.md) · Website version: https://apixoai.online/docs
