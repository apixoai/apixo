# Tips to get the most out of Apixo

## Save money
- **Keep your context short.** Every request re-sends the whole conversation. Start a new chat for a new task, and keep long agent sessions under ~100k tokens (most tools have a "compact" / "condense" command).
- **Cached tokens are cheaper.** Coding agents (Claude Code, OpenCode, Cline…) reuse the same long prompt, so most input is billed at the low cache price. Your usage page shows the savings.
- **Pick the right model for the job.** Use a fast, low-cost model (e.g. `glm-5.3-abliterated`) for simple edits, renames and questions; switch to a bigger model only for hard reasoning. One key covers all of them.
- **Failed requests are free.** If a request errors out, you are not charged for it.

## Reliability
- **Check model health** before blaming your setup: https://apixoai.online/status — or `/status` in the Telegram bot.
- **Have a backup model.** If a model is slow or failing, switch to another one with the same key (`/model` in Claude Code, `/models` in OpenCode). Several popular models have a "-backup" or "-fast" twin.
- **On `429`**, wait the `retry-after` seconds. On `5xx`, retry with backoff.

## Setup
- **OpenCode desktop:** use the `opencode.json` file ([configs/opencode](configs/opencode/opencode.json)); the app's "Custom provider" form has a known bug.
- **Claude Code:** the base URL has **no** `/v1`. OpenAI-style tools need `/v1`.
- **Windows:** make sure config files are not saved as `.json.txt` (turn on *View → File name extensions*).
- **Get configs with your key filled in** from https://apixoai.online/dashboard/setup or `/setup` in the bot.

## Security
- Never paste your key in a public repo, screenshot or video. If it leaks, rotate it at once in the dashboard or with `/regenerate` in the bot — the old key stops working immediately.
