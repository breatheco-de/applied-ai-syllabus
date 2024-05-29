---
description: "Learn the most important techniques for making effective prompts and getting the AI to work for your exact purposes, fix your code, translate from a programming language to another, and much more."
tags: [machine learning]


---

# Prompt Engineering for Developers 🤖
![Prompt](../../assets/charlytoc_A_prompt_engineer_crafting_precise_instructions_for_a_f16a9847-9632-4c57-b29f-7379d19d3d1f.webp)
As a developer, you are probably using AI everyday. Maybe in your code editor, in your email client, or even in your favorite search engine. Generative AI has come to stay, and with it, prompt engineering has become one of the most in-demand skills for companies today. A Prompt Engineer is someone who knows the techniques to get a generative AI model to produce an expected result.

Prompt Engineering can be very briefly summarized with the following text: It is the skill of writing clear instructions and getting an AI to follow them.

When we talk to an artificial intelligence, we expect it to understand us and do exactly what we ask, however, a poorly made prompt can lead to incorrect results. In this guide, you will discover some of the most important techniques for making effective prompts and getting the AI to work for your exact purposes, fix your code, write documentation for your projects, or even generate new ideas of programs, translate from a programming language to another, and much more.

Let's get started! 🎉

## 1. Write clear and detailed instructions

The first technique is as simple as writing a clear instruction. This sounds easy, but look at the following examples to understand its power.

| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | "Write a Python script." | Does not specify the functionality or necessary details. |
| **Good** | "Write a Python script that reads a CSV file and prints the content in a formatted table. The script should handle exceptions and include comments explaining each step." | Provides specific details about the functionality, error handling, and documentation. |

When we use Generative AI, we need to be as specific as possible to get the expected results. The more detailed the instructions, the more likely the AI will generate the desired output. Remember, the AI does not have common sense, so you need to provide all the necessary information to produce high-quality responses. If you are not sure what to include, think about what you would tell a colleague to complete the task. 

For example, when asking the model to produce a script, be clear with the following details:

- The programming language to use.
- The functionality the script should have.
- The input and output of the script.
- The error handling.
- The comments and documentation.
- If necessary, the libraries or frameworks to use.



## 2. Ask the model to act as an expert in a specific area

Asking the model to assume the role of an expert can significantly improve the quality of the responses, responding with the most appropriate words for the field you are interested in. This is especially useful when you need detailed and specialized information on a specific topic, for example, you can ask the model to act as a senior software engineer to help you design a scalable system, or as a cybersecurity expert to give you a detailed security audit, or even as a data scientist to explain a complex algorithm, the limit is your imagination.

| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | "Give me a list of coding best practices." | Does not specify the programming language or the user's context. |
| **Good** | "Act as a senior software engineer. I want to know the best practices for writing clean and efficient Python code. Include examples and common pitfalls to avoid." | Provides specific details about the user and the type of information needed. |

## 3. Use delimiters

Using delimiters to clearly define the text or task to be performed can avoid ambiguities and improve the accuracy of the responses. Delimiters can be quotes, parentheses, brackets, or any other symbol that clearly indicates the beginning and end of the text or task. This is especially useful when you need the AI to perform a task that involves some type of text that the AI must use to generate the response. For example, you can pass different files of your repository to provide the AI with the necessary context to generate an accurate response. 

| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | Translate the code to JavaScript ensure good translation quality is very easy if you know how to use AI. | Can generate incorrect responses by not clearly delimiting the text to be translated. |
| **Good** | Translate the code to JavaScript """def add(a, b): return a + b""". | Clearly delimits the text to be translated, avoiding ambiguities. |

## 4. Let the model "think"

Inviting the model to reflect before providing a response can improve the accuracy and depth of the response. This can be achieved by formulating questions that require deeper analysis or that involve multiple steps to reach a conclusion. For example, instead of directly asking for an answer to a coding problem, you can ask the model to analyze the problem step by step and reflect on whether the final answer is correct or not. When producing code snippets, for example, you can try to ask the model to analyze the time complexity of a function and reflect on its efficiency, or to compare two different algorithms and explain which one is more efficient, or maybe generate the expected output of a code snippet before giving you a solution.

| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | "If a function has a time complexity of O(n) and another of O(log n), which one is more efficient?" | Direct question that does not invite reflection. The model may respond correctly or incorrectly, but the prompt lacks instructions for solving and reflecting on the problem. |
| **Good** | "Analyze the time complexity of these two functions: one with O(n) and another with O(log n). Reflect on which one is more efficient and explain why." | Invites the model to perform a mental exercise before responding, leading to a more appropriate response. |

> DISCLAIMER: Generative AI models are NOT capable of "thinking" like humans. However, by inviting the model to reflect on a problem or task, additional context is provided that can improve the quality of the response.

## 5. One shot, few shot, many shot examples

Providing specific examples to guide the model in generating more precise and aligned responses with what is expected. The examples can be one (one shot), a few (few shot), or many (many shot), depending on the complexity of the task and the amount of context needed. This is one of the most powerful techniques to improve the quality of AI responses, as it provides concrete and relevant information to generate a response with a precise structure. Examples can also help clarify the user's context and expectations, which can reduce ambiguity and improve the accuracy of responses. This is especially useful when you need the AI to generate responses in a structured format, such as code snippets, lists, or tables.

| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | "Generate a JSON of API endpoints." | Does not provide examples or context. |
| **Good** | "Generate a JSON of API endpoints. Here are two examples: [{\"method\": \"GET\", \"endpoint\": \"/users\", \"description\": \"Retrieve user list\"}, {\"method\": \"POST\", \"endpoint\": \"/users\", \"description\": \"Create a new user\"}]. Extend this list to 10 endpoints." | Provides specific examples and a clear instruction to extend the list. |

## 6. Retrieval Augmented Generation (RAG) and Context

Models are trained with large amounts of data, but sometimes you need to provide specific context to get an accurate response, as this data is not infinite. The Retrieval Augmented Generation (RAG) technique combines proven information retrieval with text generation. It uses [embeddings](https://gustavo-espindola.medium.com/qu%C3%A9-son-los-embeddings-y-c%C3%B3mo-se-utilizan-en-la-inteligencia-artificial-con-python-45b751ed86a5) to search for relevant information and then generate a response based on that information. You can learn more about RAG [here](https://aws.amazon.com/es/what-is/retrieval-augmented-generation/).

This technique consists of providing the AI with the appropriate **context**, so you can also manually pass useful information. Generally, RAG is more used by advanced programmers, and we we'll delve in how to use RAG with Python in the near future, so stay tuned! However, here is an example of what a prompt would look like by passing context that the AI does not have in its training data.


| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | "Create a fictional character for a game." | Does not provide context or specific details. |
| **Good** | "Create a fictional character for a game based on the following description: <Charly is an AI developer with experience in Langchain, OpenAI, Django, Python, Javascript, Typescript, NodeJs, NextJs, Docker, React, Git, and many other technologies. He is passionate about technology and always looking for new ways to innovate. In his free time, he likes to read comics and play video games.> Generate a detailed description of the character, including skills, personality, and appearance." | Provides specific context and uses the RAG technique to generate a detailed response. |

Some useful RAG libraries for Python are: [Pinecone](https://www.pinecone.io/), [Chroma](https://docs.trychroma.com/getting-started), [Ollama](https://ollama.com/library), and much more! You can even try to build your own vector storage.

## Conclusion

Prompt engineering is an essential skill for effectively interacting with artificial intelligence models. Using the appropriate techniques can help you obtain more accurate, detailed, and useful responses. Always remember to be clear and specific in your instructions, and do not hesitate to ask the model to assume specific roles or verify its responses. With practice and creativity, you can master the art of writing effective prompts and make the most of AI capabilities. Good luck on your coding journey! Leave in the comments which are your favorite techniques for prompt engineering and your favorites models! 🚀
