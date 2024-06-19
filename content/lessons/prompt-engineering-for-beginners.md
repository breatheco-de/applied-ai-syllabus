--- 
description: "Master the art of Prompt Engineering to maximize the potential of AI. Learn to write precise instructions to get high-quality results. Let's get started! 🎉" 
tags: ["prompt engineering", "generative ai"] 
title: "Prompt Engineering for Beginners"
---


![Prompt](https://raw.githubusercontent.com/breatheco-de/applied-ai-syllabus/main/assets/charlytoc_A_robot_chef_preparing_a_gourmet_meal_in_a_kitchen_hi_86f30105-10ac-4b6f-811c-e90be102520a.webp)  

[Generative AI](https://cloud.google.com/use-cases/generative-ai?hl=es) is here to stay, and with it, **Prompt Engineering** has become one of the most in-demand skills for companies today. A [Prompt Engineer](https://4geeks.com/lesson/how-to-become-a-prompt-engineer) is someone who knows the techniques to get a [generative artificial intelligence](https://4geeks.com/lesson/artificial-intelligence-in-simple-terms) model to produce an expected result.   

## What is Prompt Engineering 
**Prompt Engineering** can be summarized very briefly with the following text: It is the skill of writing clear instructions and getting an AI to follow them. However, behind this simple definition lies a world of techniques and strategies that will allow you to obtain precise and high-quality results.  

When we talk to an **artificial intelligence**, we expect it to understand us and do exactly what we ask, but a poorly made **prompt** can lead to incorrect results. In this guide, you will discover some of the most important techniques for making effective prompts and getting the AI to work for your exact purposes, whatever they may be. Let's get started! 🎉  

> A [Prompt is the instruction](https://4geeks.com/lesson/what-is-a-prompt) you give to an AI model. It can be as simple as a greeting, a question, or a more complex instruction that includes tasks the AI must perform.

## 1. Write clear and detailed instructions  
The first technique is as simple as [writing a clear instruction](https://platform.openai.com/docs/guides/prompt-engineering/tactic-include-details-in-your-query-to-get-more-relevant-answers). This sounds easy, but look at the following examples to understand its power.  

| Prompt    | Description | Why |
| --------- | ----------- | --- |
| **Bad**  | "Write an article about the coexistence of dogs and cats." | Does not specify the format or necessary details. |
| **Good** | "Write an article in markdown format about the coexistence of dogs and cats. Include a table comparing common problems and their solutions. The article should seem written by a human, add examples, tips. Maximum length: 2000 words" | Provides specific details about the format, content, and length. |

In practice, a "good" or "bad" prompt really depends on the use case, but generally when generating text, we want a specific structured response. Prompt engineering helps us achieve this with this and other techniques that we will see below. Keep in mind that the clarity with which you write is directly related to the result you will get.  

## 2. Ask the model to act as an expert in a specific area  
[Asking the model to assume the role of an expert](https://platform.openai.com/docs/guides/prompt-engineering/tactic-ask-the-model-to-adopt-a-persona) can significantly improve the quality of the responses, responding with the most appropriate words for the field you are interested in. This is especially useful when you need detailed and specialized information on a specific topic. For example, you can ask the model to act as a personal trainer to help you create an exercise routine, or as a chef to give you a detailed recipe for a specific dish, or even as a math teacher to explain a complex concept. The limit is your imagination.  

| Prompt    | Description | Why |
| --------- | ----------- | --- |
| **Bad**  | "Give me a list of exercises to do at home." | Does not specify the type of exercises or the user's context. |
| **Good** | "Act as a personal trainer. I want to create a routine to train my abs, arms, and back. I am a 25-year-old man, 1.70 m and 78 kg." | Provides specific details about the user and the type of exercises needed. |

## 3. Use delimiters  
[Using delimiters to clearly define the text](https://platform.openai.com/docs/guides/prompt-engineering/tactic-use-delimiters-to-clearly-indicate-distinct-parts-of-the-input) or task to be performed can avoid ambiguities and improve the accuracy of the responses. Delimiters can be quotes, parentheses, brackets, or any other symbol that clearly indicates the beginning and end of the text or task. This is especially useful when you need to give special context to the AI model. For example: User inputed information, a specific format, context extracted from another source, etc.  

| Prompt    | Description | Why |
| --------- | ----------- | --- |
| **Bad**  | Translate the text to French ensure good translation quality is very easy if you know how to use AI. | Can generate incorrect responses by not clearly delimiting the text to be translated. |
| **Good** | Translate the text to French """ensure good translation quality is very easy if you know how to use AI""". | Clearly delimits the text to be translated, avoiding ambiguities. |

## 4. A good prompt invites the model to think
[Inviting the model to reflect](https://platform.openai.com/docs/guides/prompt-engineering/tactic-specify-the-steps-required-to-complete-a-task) before providing a response can improve the accuracy and depth of the response. This can be achieved by asking questions that require deeper analysis or that involve multiple steps to reach a conclusion. For example, instead of directly asking for an answer to a math problem, you can ask the model to analyze the problem step by step and reflect on the final answer.  

| Prompt    | Description | Why |
| --------- | ----------- | --- |
| **Bad**  | "If a train travels at 60 km/h and another at 80 km/h, at what point will they meet if they leave from cities 300 km apart?" | Direct question that does not invite reflection. The model may respond correctly or incorrectly, but the prompt lacks instructions for solving and reflecting on the problem. |
| **Good** | "Solve this complex math problem: If a train travels at 60 km/h and another at 80 km/h, at what point will they meet if they leave from cities 300 km apart? Analyze the problem step by step and reflect on whether the final answer is correct or not." | Invites the model to perform a mental exercise before responding, leading to a more appropriate response. |

> Disclaimer: Generative AI models are NOT capable of "thinking" like humans. However, by inviting the model to reflect on a problem or task, additional context is provided that can improve the quality of the response.  

## 5. One shot, few shot, many shot examples  
[Providing specific examples](https://platform.openai.com/docs/guides/prompt-engineering/tactic-provide-examples) to guide the model in generating more precise and aligned responses with what is expected. Examples can be one (one shot), a few (few shot), or many (many shot), depending on the complexity of the task and the amount of context needed. This is one of the most powerful techniques to improve the quality of AI responses, as it provides concrete and relevant information to generate a response with a precise structure. Examples can also help clarify the user's context and expectations, which can reduce ambiguity and improve the accuracy of responses.  

| Prompt    | Description | Why |
| --------- | ----------- | --- |
| **Bad**  | "Generate a JSON of users." | Does not provide examples or context. |
| **Good** | "Generate a JSON of users. Here are two examples: [{\"name\": \"John\", \"age\": 30}, {\"name\": \"Jane\", \"age\": 25}]. Extend this list to 10 users." | Provides specific examples and a clear instruction to extend the list. |

## 6. Retrieval Augmented Generation (RAG) and Context  
Models are trained with large amounts of data, but sometimes you need to provide specific context to get an accurate response, as this data is not infinite. The technique of Retrieval Augmented Generation (RAG) combines proven information retrieval with text generation. It uses [embeddings](https://gustavo-espindola.medium.com/qu%C3%A9-son-los-embeddings-y-c%C3%B3mo-se-utilizan-en-la-inteligencia-artificial-con-python-45b751ed86a5) to search for relevant information and then generate a response based on that information. You can learn more about RAG [here](https://aws.amazon.com/es/what-is/retrieval-augmented-generation/).  

This technique consists of providing the AI with the appropriate **context**, so you can also manually pass useful information. Generally, RAG is more used by advanced programmers, but here is an example of what a prompt would look like by passing context that the AI does not have in its training data.  

| Prompt    | Description | Why |
| --------- | ----------- | --- |
| **Bad**  | "Create a fictional character for a comic." | Does not provide context or specific details. |
| **Good** | "Create a fictional character for a comic based on the following description: <Charly is an AI developer with experience in Langchain, OpenAI, Django, Python, Javascript, Typescript, NodeJs, NextJs, Docker, React, Git, and many other technologies. He is passionate about technology and is always looking for new ways to innovate. In his free time, he likes to read comics and play video games.> Generate a detailed description of the character, including skills, personality, and appearance." | Provides specific context and uses the RAG technique to generate a detailed response. |

## Conclusion  
**Prompt engineering** is an essential skill for effectively interacting with **artificial intelligence** models. 

By applying these techniques, you can obtain more precise, detailed, and useful responses. Always remember to be clear and specific in your instructions, and do not hesitate to ask the model to assume specific roles or verify its responses. With practice and creativity, you will be able to master the art of writing effective prompts and make the most of AI's capabilities. 

And if you want to learn more about how to become a Prompt Engineer, do not hesitate to take our [interactive Prompt Engineering course](https://4geeks.com/interactive-exercise/prompt-engineering-exercise-course). See you next time! 👋