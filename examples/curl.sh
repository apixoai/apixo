#!/usr/bin/env bash
# export APIXO_API_KEY=sk-apixo-YOUR_KEY

# OpenAI format
curl https://api.apixoai.online/v1/chat/completions \
  -H "Authorization: Bearer $APIXO_API_KEY" -H "Content-Type: application/json" \
  -d '{"model": "glm-5.3-abliterated", "messages": [{"role": "user", "content": "Hello!"}]}'

# Anthropic format
curl https://api.apixoai.online/v1/messages \
  -H "x-api-key: $APIXO_API_KEY" -H "anthropic-version: 2023-06-01" -H "Content-Type: application/json" \
  -d '{"model": "claude-fable-5", "max_tokens": 256, "messages": [{"role": "user", "content": "Hello!"}]}'

# Models available to your key
curl https://api.apixoai.online/v1/models -H "Authorization: Bearer $APIXO_API_KEY"
