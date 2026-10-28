// npm i openai
import OpenAI from "openai";

const client = new OpenAI({ baseURL: "https://api.apixoai.online/v1", apiKey: process.env.APIXO_API_KEY });

const res = await client.chat.completions.create({
  model: "gpt-6-astra",
  messages: [{ role: "user", content: "Hello!" }],
});
console.log(res.choices[0].message.content);
