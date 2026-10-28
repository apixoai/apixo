# pip install openai
import os
from openai import OpenAI

client = OpenAI(base_url="https://api.apixoai.online/v1", api_key=os.environ["APIXO_API_KEY"])

stream = client.chat.completions.create(
    model="glm-5.2",
    messages=[{"role": "user", "content": "Write a haiku about caching"}],
    stream=True,
)
for chunk in stream:
    if chunk.choices:
        print(chunk.choices[0].delta.content or "", end="", flush=True)
print()
