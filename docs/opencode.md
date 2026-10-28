# OpenCode

_Configure OpenCode to use Apixo models._

OpenCode reads `~/.config/opencode/opencode.json` (or `opencode.json` in your project). The easiest way: download the file with your key filled in from [Dashboard → Setup](https://apixoai.online/dashboard/setup), or ask the bot with `/setup`.

Minimal example:

```json
{
  "$schema": "https://opencode.ai/config.json",
  "model": "apixo/gpt-6-astra",
  "provider": {
    "apixo": {
      "npm": "@ai-sdk/openai-compatible",
      "name": "Apixo",
      "options": { "baseURL": "https://api.apixoai.online/v1", "apiKey": "sk-apixo-YOUR_KEY" },
      "models": {
        "gpt-6-astra": { "name": "gpt-6-astra" },
        "glm-5.2": { "name": "glm-5.2" }
      }
    },
    "apixo-claude": {
      "npm": "@ai-sdk/anthropic",
      "name": "Apixo — Claude",
      "options": { "baseURL": "https://api.apixoai.online/v1", "apiKey": "sk-apixo-YOUR_KEY" },
      "models": { "claude-fable-5": { "name": "claude-fable-5" } }
    }
  }
}
```

Run `opencode` and choose a model with `/models`.

## Windows & desktop app

> **Use the `opencode.json` file, not the provider screen.** Named providers in OpenCode's list are other companies, so your Apixo key won't work there. The desktop app's **Custom provider** form currently always fails with *"Custom providers are unavailable on this server"*. That is a known OpenCode 2.x bug, not your key, and the config file works.

1. Download `opencode.json` from [Dashboard → Setup](https://apixoai.online/dashboard/setup) (or `/setup` → OpenCode in the bot).
2. Save it as `C:\Users\<your name>\.config\opencode\opencode.json`. Tip: type `%USERPROFILE%` in the File Explorer address bar, then create the `.config` and `opencode` folders if they don't exist. On macOS / Linux: `~/.config/opencode/opencode.json`.
3. Make sure the file is not saved as `opencode.json.txt` (turn on *View → File name extensions* in Explorer).
4. Quit OpenCode completely and open it again.
5. Click the model name under the chat box and pick a **Apixo** model.

---
[← All docs](README.md) · Website version: https://apixoai.online/docs/opencode
