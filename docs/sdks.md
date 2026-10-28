# OpenAI & Anthropic SDKs

_Use the official OpenAI and Anthropic SDKs with Apixo._

## Python — OpenAI SDK

```python
from openai import OpenAI

client = OpenAI(base_url="https://api.apixoai.online/v1", api_key="sk-apixo-YOUR_KEY")
stream = client.chat.completions.create(
    model="gpt-6-astra",
    messages=[{"role": "user", "content": "Write a haiku about caching"}],
    stream=True,
)
for chunk in stream:
    print(chunk.choices[0].delta.content or "", end="") if chunk.choices else None
```

## Python — Anthropic SDK

```python
import anthropic

client = anthropic.Anthropic(base_url="https://api.apixoai.online", api_key="sk-apixo-YOUR_KEY")
msg = client.messages.create(
    model="claude-fable-5",
    max_tokens=1024,
    messages=[{"role": "user", "content": "Explain SSE in one paragraph"}],
)
print(msg.content[0].text)
```

## TypeScript — OpenAI SDK

```ts
import OpenAI from "openai";

const client = new OpenAI({ baseURL: "https://api.apixoai.online/v1", apiKey: process.env.APIXO_API_KEY });
const res = await client.chat.completions.create({
  model: "glm-5.2",
  messages: [{ role: "user", content: "Hello!" }],
});
console.log(res.choices[0].message.content);
```

## LangChain, LiteLLM & others

Anything that accepts an OpenAI-compatible `base_url` works: set it to `https://api.apixoai.online/v1` and use your key.

---
[← All docs](README.md) · Website version: https://apixoai.online/docs/sdks
