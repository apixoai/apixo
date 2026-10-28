# pip install anthropic
import os
import anthropic

client = anthropic.Anthropic(base_url="https://api.apixoai.online", api_key=os.environ["APIXO_API_KEY"])

msg = client.messages.create(
    model="claude-fable-5",
    max_tokens=512,
    messages=[{"role": "user", "content": "Explain server-sent events in one paragraph"}],
)
print(msg.content[0].text)
