# Continue

_Configure the Continue extension with Apixo._

Edit `~/.continue/config.yaml`:

```yaml
name: Apixo
version: 1.0.0
schema: v1
models:
  - name: gpt-6-astra
    provider: openai
    model: gpt-6-astra
    apiBase: https://api.apixoai.online/v1
    apiKey: sk-apixo-YOUR_KEY
  - name: claude-fable-5
    provider: openai
    model: claude-fable-5
    apiBase: https://api.apixoai.online/v1
    apiKey: sk-apixo-YOUR_KEY
```

---
[← All docs](README.md) · Website version: https://apixoai.online/docs/continue
