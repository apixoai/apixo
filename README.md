<div align="center">

# Apixo

**Uncensored & abliterated AI models + every top model. One API key.**

🔓 Uncensored / abliterated GLM-5.3 · DeepSeek V4 · Qwen3 · Gemma — plus Claude · GPT · Kimi · Gemini · Grok — through one OpenAI- **and** Anthropic-compatible API.
Pay per token, top up with crypto, no subscription.

[Website](https://apixoai.online) · [Get your key](https://apixoai.online/login) · [Pricing](https://apixoai.online/pricing) · [Docs](docs/README.md) · [Telegram bot](https://t.me/Apixo_bot) · [Channel](https://t.me/aiapixo) · [YouTube](https://www.youtube.com/@apixo-ai)

</div>

---

## 🔓 Uncensored & abliterated models

Our most popular models: no refusals, no "I can't help with that". Same API, same tools (Claude Code, OpenCode, Cline, Kilo Code, Cursor…) — just change the model ID.

| Model ID | Input | Output | Cached input | Context | Trial |
|---|---|---|---|---|---|
| `glm-5.3-abliterated` | $1.40 | $1.40 | $0.40 | 1000k | ✅ |
| `glm-5.3-uncensored` | $0.35 | $0.35 | $0.10 | 1000k | ✅ |
| `glm-5.3-flash-abliterated` | $0.40 | $0.40 | $0.10 | 1000k | ✅ |
| `deepseek-v4.1-flash-1017-abliterated` | $0.30 | $0.30 | $0.10 | 1000k | ✅ |
| `glm-5.3-flash-uncensored` | $0.10 | $0.10 | $0.009 | 1000k | ✅ |
| `deepseek-v4-pro-uncensored` | $0.50 | $0.50 | $0.10 | 1000k | ✅ |
| `deepseek-v4.1-flash-abliterated-fast` | $1.40 | $1.40 | $0.32 | 1000k | ✅ |
| `deepseek-v4.1-flash-abliterated` | $0.30 | $0.30 | $0.10 | 1000k | ✅ |
| `gemma-4-31b-abliterated` | $0.24 | $0.72 | $0.24 | 33k |  |
| `qwen3-abliterated` | $0.49 | $2.37 | $0.49 | 33k |  |
| `qwen3-uncensored` | $0.49 | $2.37 | $0.49 | 33k |  |
| `glm5.3-flash-abliterated-backup` | $0.34 | $0.34 | $0.034 | 1000k |  |

Full list with every model: [MODELS.md](MODELS.md) · Live prices: https://apixoai.online/pricing

## What you get

- 🔓 **12 uncensored & abliterated models** — fewer content filters, built for coding agents, creative writing and research.
- 🔑 **One key, 44+ models** — switch model by changing one string. Live list: [MODELS.md](MODELS.md).
- 🔌 **Works with your tools** — Claude Code, OpenCode, Cline, Roo Code, Kilo Code, Cursor, Continue, Codex CLI, the OpenAI & Anthropic SDKs, LangChain, LiteLLM, curl.
- 🧾 **Both API formats** — `/v1/chat/completions`, `/v1/responses` and `/v1/messages`. Streaming, tool calling, images and reasoning work as usual.
- 💸 **Pay as you go** — prepaid balance, per-token billing, up to 95% below official API prices on many models. Cached tokens are billed at the lower cache price.
- 🎁 **Free trial** — new accounts get trial credit on 24 models. Extra free tokens: https://apixoai.online/dashboard/earn
- 🪙 **Crypto top-up** — USDT, USDC, BTC, ETH, LTC and more; credited automatically.
- 📊 **Dashboard** — usage per request, costs, cache savings, model status, support tickets.
- 🔒 **Privacy** — prompts and responses of API requests are never stored.

## Quick start (2 minutes)

1. **Get a key** — sign in at https://apixoai.online/login or press Start in the [Telegram bot](https://t.me/Apixo_bot).
2. **Set two values** in your tool:

| Setting | Value |
|---|---|
| Base URL — OpenAI-style tools | `https://api.apixoai.online/v1` |
| Base URL — Anthropic-style tools (Claude Code) | `https://api.apixoai.online` |
| API key | `sk-apixo-YOUR_KEY` |

3. **Test it:**

```bash
curl https://api.apixoai.online/v1/chat/completions \
  -H "Authorization: Bearer sk-apixo-YOUR_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model": "glm-5.3-abliterated", "messages": [{"role": "user", "content": "Hello!"}]}'
```

## Guides

| Tool | Guide | Config file |
|---|---|---|
| Claude Code | [docs/claude-code.md](docs/claude-code.md) | [settings.json](configs/claude-code/settings.json) |
| OpenCode | [docs/opencode.md](docs/opencode.md) | [opencode.json](configs/opencode/opencode.json) |
| Cline / Roo Code / Kilo Code | [docs/cline.md](docs/cline.md) | — |
| Cursor | [docs/cursor.md](docs/cursor.md) | — |
| Continue | [docs/continue.md](docs/continue.md) | [config.yaml](configs/continue/config.yaml) |
| Codex CLI | [docs/codex.md](docs/codex.md) | [config.toml](configs/codex/config.toml) |
| SDKs (Python / Node) | [docs/sdks.md](docs/sdks.md) | [examples/](examples/README.md) |
| API reference | [docs/api.md](docs/api.md) | — |

Configs with **your key already filled in**: https://apixoai.online/dashboard/setup or `/setup` in the bot.

## More

- 💡 [Tips — save money & avoid errors](TIPS.md)
- ❓ [FAQ](FAQ.md)
- 🟢 Model status: https://apixoai.online/status
- 🛟 Support: https://apixoai.online/dashboard/support · [Telegram bot](https://t.me/Apixo_bot)

---

<sub>This repository contains documentation and examples only. It is not the source code of the service. ⭐ Star it to get updates when new models are added.</sub>
