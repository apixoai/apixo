# API reference

_Endpoints, authentication, streaming, errors and rate limits of the Apixo API._

## Authentication

Send your key in **either** header — both work on every endpoint:

```http
Authorization: Bearer sk-apixo-YOUR_KEY
x-api-key: sk-apixo-YOUR_KEY
```

## Endpoints

| Method | Path | Format |
|---|---|---|
| `POST` | `/v1/chat/completions` | OpenAI Chat Completions |
| `POST` | `/v1/responses` | OpenAI Responses |
| `POST` | `/v1/messages` | Anthropic Messages |
| `POST` | `/v1/messages/count_tokens` | Anthropic token counting (not billed) |
| `GET` | `/v1/models` | List of models available to you |

Every model works on every format — you can call `claude-fable-5` through `/v1/chat/completions` or `gpt-6-astra` through `/v1/messages`. Request bodies are forwarded unchanged, so tools, images, reasoning / thinking parameters and JSON mode work as documented by OpenAI and Anthropic.

## Streaming

Set `"stream": true`. Responses are sent as Server-Sent Events exactly like the original APIs. For Chat Completions we automatically enable `stream_options.include_usage`, so the last chunk contains token usage.

## Usage & billing

Each response includes the standard `usage` object. We bill:

- **input tokens** at the model's input price,
- **output tokens** (including reasoning) at the output price,
- **cached input tokens** at the lower cache price,
- **cache writes** (Anthropic `cache_creation_input_tokens`) at the cache-write price.

Prices are per 1M tokens — see [pricing](https://apixoai.online/pricing). The cost of each request appears in your [usage log](https://apixoai.online/dashboard/usage) within a second.

## Errors

Errors use the format of the endpoint you called (OpenAI `{"error": {...}}` or Anthropic `{"type": "error", ...}`).

| Status | Meaning | What to do |
|---|---|---|
| `400` | Invalid JSON or the model isn't available | Check the model ID against `/v1/models` |
| `401` | Missing, wrong or disabled key | Copy the key again from the dashboard |
| `402` | Balance too low | [Top up](https://apixoai.online/dashboard/billing) |
| `403` | Account suspended, or a trial account calling a non-trial model | Top up or contact support |
| `429` | Rate limit reached | Wait for the `retry-after` seconds |
| `5xx` | Temporary model problem | Retry with backoff; check [status](https://apixoai.online/status) |

## Rate limits

Limits are per API key, in requests per minute. Paying accounts get a higher limit than trial accounts. When you hit it you receive `429` with a `retry-after` header.

## Privacy

We never store prompt or response content. For billing we keep the model, token counts, cost, latency and status of each request.

---
[← All docs](README.md) · Website version: https://apixoai.online/docs/api
