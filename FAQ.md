# FAQ

### Which tools work with it?

Anything that lets you set a custom base URL: Claude Code, OpenCode, Cline, Roo Code, Cursor, Continue, Codex CLI, the OpenAI and Anthropic SDKs, LangChain, LiteLLM and plain curl. The dashboard and the Telegram bot generate ready-to-paste configs with your key filled in.

### Is it OpenAI- or Anthropic-compatible?

Both. Use /v1/chat/completions or /v1/responses with OpenAI clients, and /v1/messages with Anthropic clients. Streaming, tool calling and reasoning parameters are passed through unchanged.

### How am I billed?

Pay as you go, per token. Input, output and cached tokens are metered on every request and deducted from your prepaid balance in real time. You can see every request, its tokens and its cost in your dashboard. No subscription, no monthly minimum.

### Do cached tokens cost less?

Yes. When a model re-uses a cached prompt, those tokens are billed at the much lower cache price — usually around a tenth of the normal input price. Coding agents re-send long contexts, so this adds up quickly; your usage page shows the savings.

### How do I pay?

Top up your balance with crypto — USDT, USDC, BTC, ETH, LTC and more across several networks. Your balance is credited automatically after one blockchain confirmation.

### Is there a free trial?

New accounts get a small trial credit to test selected models, valid for a limited time (usually 72 hours). Top up any amount to unlock every model and higher rate limits.

### Do you store my prompts?

Not for API requests. We only record metadata needed for billing — model, token counts, cost, latency and status. Prompt and response content of API requests is never stored (Chat page history: see Privacy).

### What happens if my balance runs out?

A request that has already started always finishes. New requests are refused with a clear 'insufficient balance' error until you top up — you're never charged beyond what you've prepaid by more than one request.

More questions? Open a ticket at https://apixoai.online/dashboard/support or message the [Telegram bot](https://t.me/Apixo_bot).
