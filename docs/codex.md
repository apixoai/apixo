# Codex CLI

_Run OpenAI Codex CLI against Apixo._

Add a provider to `~/.codex/config.toml`:

```toml
model = "gpt-6-astra"
model_provider = "apixo"

[model_providers.apixo]
name = "Apixo"
base_url = "https://api.apixoai.online/v1"
env_key = "APIXO_API_KEY"
wire_api = "responses"
```

Then:

```bash
export APIXO_API_KEY=sk-apixo-YOUR_KEY
codex
```

---
[← All docs](README.md) · Website version: https://apixoai.online/docs/codex
