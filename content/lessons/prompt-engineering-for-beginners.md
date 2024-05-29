---
description: Learn the most important techniques for making effective prompts and getting the AI to work for your exact purposes.
tags: [machine learning]

---

# Prompt Engineering for Beginners 🤖

Generative AI has come to stay, and with it, prompt engineering has become one of the most in-demand skills for companies today. A Prompt Engineer is someone who knows the techniques to get a generative AI model to produce an expected result.

Prompt Engineering can be very briefly summarized with the following text: It is the skill of writing clear instructions and getting an AI to follow them.

When we talk to an artificial intelligence, we expect it to understand us and do exactly what we ask, however, a poorly made prompt can lead to incorrect results. In this guide, you will discover some of the most important techniques for making effective prompts and getting the AI to work for your exact purposes, whatever they may be.

Let's get started! 🎉

## 1. Write clear and detailed instructions

The first technique is as simple as writing a clear instruction. This sounds easy, but look at the following examples to understand its power.

| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | "Write an article about the coexistence between dogs and cats." | Does not specify the format or necessary details. |
| **Good** | "Write an article in markdown format about the coexistence between dogs and cats. Include a table comparing common problems and their solutions. The article should seem written by a human, add examples, tips. Maximum length: 2000 words" | Provides specific details about the format, content, and length. |

In practice, a "good" or "bad" prompt really depends on the use case, but generally when generating text, we want a specific structured response. Prompt engineering helps us achieve this with this and other techniques that we will see below. Keep in mind that the clarity with which you write is directly related to the result you will get.

## 2. Ask the model to act as an expert in a specific area

Asking the model to assume the role of an expert can significantly improve the quality of the responses, responding with the most appropriate words for the field you are interested in. This is especially useful when you need detailed and specialized information on a specific topic, for example, you can ask the model to act as a personal trainer to help you create an exercise routine, or as a chef to give you a detailed recipe for a specific dish, or even as a math teacher to explain a complex concept, the limit is your imagination.

| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | "Give me a list of exercises to do at home." | Does not specify the type of exercises or the user's context. |
| **Good** | "Act as a personal trainer. I want to create a routine to train my abs, arms, and back. I am a 25-year-old man, 1.70 m and 78 kg." | Provides specific details about the user and the type of exercises needed. |

## 3. Use delimiters

Using delimiters to clearly define the text or task to be performed can avoid ambiguities and improve the accuracy of the responses. Delimiters can be quotes, parentheses, brackets, or any other symbol that clearly indicates the beginning and end of the text or task. This is especially useful when you need the AI to perform a task that involves some type of text that the AI must use to generate the response.

| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | Translate the text to French ensure good translation quality is very easy if you know how to use AI. | Can generate incorrect responses by not clearly delimiting the text to be translated. |
| **Good** | Translate the text to French """ensure good translation quality is very easy if you know how to use AI""". | Clearly delimits the text to be translated, avoiding ambiguities. |

## 4. Let the model "think"

Inviting the model to reflect before providing a response can improve the accuracy and depth of the response. This can be achieved by formulating questions that require deeper analysis or that involve multiple steps to reach a conclusion. For example, instead of directly asking for an answer to a math problem, you can ask the model to analyze the problem step by step and reflect on whether the final answer is correct or not.

| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | "If a train travels at 60 km/h and another at 80 km/h, at what point will they meet if they depart from cities separated by 300 km?" | Direct question that does not invite reflection. The model may respond correctly or incorrectly, but the prompt lacks instructions for solving and reflecting on the problem. |
| **Good** | "Solve this complex math problem: If a train travels at 60 km/h and another at 80 km/h, at what point will they meet if they depart from cities separated by 300 km? Analyze the problem step by step and reflect on whether the final answer is correct or not." | Invites the model to perform a mental exercise before responding, leading to a more appropriate response. |

> DISCLAIMER: Generative AI models are NOT capable of "thinking" like humans. However, by inviting the model to reflect on a problem or task, additional context is provided that can improve the quality of the response.

## 5. One shot, few shot, many shot examples

Providing specific examples to guide the model in generating more precise and aligned responses with what is expected. The examples can be one (one shot), a few (few shot), or many (many shot), depending on the complexity of the task and the amount of context needed. This is one of the most powerful techniques to improve the quality of AI responses, as it provides concrete and relevant information to generate a response with a precise structure. Examples can also help clarify the user's context and expectations, which can reduce ambiguity and improve the accuracy of responses.

| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | "Generate a JSON of users." | Does not provide examples or context. |
| **Good** | "Generate a JSON of users. Here are two examples: [{\"name\": \"John\", \"age\": 30}, {\"name\": \"Jane\", \"age\": 25}]. Extend this list to 10 users." | Provides specific examples and a clear instruction to extend the list. |

## 6. Retrieval Augmented Generation (RAG) and Context

Models are trained with large amounts of data, but sometimes you need to provide specific context to get an accurate response, as this data is not infinite. The Retrieval Augmented Generation (RAG) technique combines proven information retrieval with text generation. It uses [embeddings](https://gustavo-espindola.medium.com/qu%C3%A9-son-los-embeddings-y-c%C3%B3mo-se-utilizan-en-la-inteligencia-artificial-con-python-45b751ed86a5) to search for relevant information and then generate a response based on that information. You can learn more about RAG [here](https://aws.amazon.com/es/what-is/retrieval-augmented-generation/).

This technique consists of providing the AI with the appropriate **context**, so you can also manually pass useful information. Generally, RAG is more used by advanced programmers, but here is an example of what a prompt would look like by passing context that the AI does not have in its training data.

| Prompt | Description | Why |
|--------|-------------|-----|
| **Bad** | "Create a fictional character for a comic." | Does not provide context or specific details. |
| **Good** | "Create a fictional character for a comic based on the following description: <Charly is an AI developer with experience in Langchain, OpenAI, Django, Python, Javascript, Typescript, NodeJs, NextJs, Docker, React, Git, and many other technologies. He is passionate about technology and always looking for new ways to innovate. In his free time, he likes to read comics and play video games.> Generate a detailed description of the character, including skills, personality, and appearance." | Provides specific context and uses the RAG technique to generate a detailed response. |

## Conclusion

Prompt engineering is an essential skill for effectively interacting with artificial intelligence models. By applying these techniques, you can obtain more accurate, detailed, and useful responses. Always remember to be clear and specific in your instructions, and do not hesitate to ask the model to assume specific roles or verify its responses. With practice and creativity, you can master the art of writing effective prompts and make the most of AI capabilities. Good luck on your learning journey! 🚀

And if you want to learn more about how to become a Prompt Engineer, do not hesitate to take our interactive tutorial [here](#blank). See you next time! 👋
