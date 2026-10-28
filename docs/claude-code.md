# Claude Code

_Use Claude Code with Apixo: environment variables or settings.json._

> **Hit your Claude Code limit?** Run Claude Code on your own Apixo key: pay per token, no 5-hour windows, no weekly cap. **[Get your API key →](https://apixoai.online/login)** · [See prices vs official](https://apixoai.online/pricing)

Claude Code talks the Anthropic format, so point it at our base URL **without** `/v1`.

## Option A — environment variables

```bash
export ANTHROPIC_BASE_URL=https://api.apixoai.online
export ANTHROPIC_AUTH_TOKEN=sk-apixo-YOUR_KEY
export ANTHROPIC_MODEL=claude-fable-5
claude
```

## Option B — settings file

Save as `~/.claude/settings.json` (all projects) or `.claude/settings.json` (one project):

```json
{
  "env": {
    "ANTHROPIC_BASE_URL": "https://api.apixoai.online",
    "ANTHROPIC_AUTH_TOKEN": "sk-apixo-YOUR_KEY",
    "ANTHROPIC_MODEL": "claude-fable-5"
  }
}
```

Switch models inside Claude Code with `/model <id>`. Any model from [the list](https://apixoai.online/models) works — including non-Claude ones.

> Prompt caching is used heavily by Claude Code. Cached tokens are billed at the cache price, which keeps long sessions cheap.

---
[← All docs](README.md) · Website version: https://apixoai.online/docs/claude-code
