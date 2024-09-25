---
description: "A beginner's guide to building your first AI application using Python and OpenAI's API."
tags: ["generative AI", "LLMs", "AI technology", "OpenAI"]
title: "How to Make Your First AI Application"
authors: ["Charlytoc"]
---

![Programador frente a una laptop](https://raw.githubusercontent.com/breatheco-de/applied-ai-syllabus/refs/heads/main/assets/programmer-in-laptop.webp)

Building an AI application can be challenging without prior experience. In this article, we will explore the OpenAI API for chat completions, the most common parameters, how to get an OpenAI API key, and we will write the necessary code to build a command line chat application. This can be the perfect first AI application and the entry point to build awesome things. Let's start!

## Step 1: Setting Up Your Environment

Before we dive into coding, we need to set up our environment. Follow these steps:

1. **Install Python**: Make sure you have Python installed on your machine. You can download it from [python.org](https://www.python.org/downloads/).

2. **Install the OpenAI SDK**: Open your terminal and run the following command to install the OpenAI SDK:

   ```bash
   pip install openai
   ```

3. **Get Your OpenAI API Key**:

   - Go to the [OpenAI API dashboard](https://platform.openai.com/signup).
   - Sign up or log in to your account.
   - Create a new API key and store it securely.

4. **Set Your API Key as an Environment Variable**:
   - On Unix systems, you can do this by running:
     ```bash
     export OPENAI_API_KEY="your_api_key_here"
     ```
   - On Windows, you can set it in the command prompt:
     ```cmd
     set OPENAI_API_KEY="your_api_key_here"
     ```

## Step 2: Creating Your Chatbot Application

Now that we have our environment set up, let's create a simple command line chatbot. We will create a Python file named `chatbot.py`.

### Code for `chatbot.py`

```python
import os
import openai

# Load your API key from an environment variable
openai.api_key = os.getenv("OPENAI_API_KEY")

# Initialize conversation history
conversation_history = []

def get_chat_response(user_input):
    # Append user input to conversation history
    conversation_history.append({"role": "user", "content": user_input})

    response = openai.ChatCompletion.create(
        model="gpt-4o-mini",
        messages=[
            {"role": "system", "content": "You are a helpful assistant."},
        ] + conversation_history,  # Include conversation history
        temperature=0.7,  # Controls randomness of the output
        max_tokens=150,   # Limits the response length
        n=1,              # Number of responses to generate
        stop=None         # You can specify stop sequences here
    )

    # Get the assistant's response
    assistant_response = response.choices[0].message['content']

    # Append assistant response to conversation history
    conversation_history.append({"role": "assistant", "content": assistant_response})

    return assistant_response

def main():
    print("Welcome to the Chatbot! Type 'exit' to quit.")
    while True:
        user_input = input("You: ")
        if user_input.lower() == 'exit':
            break
        response = get_chat_response(user_input)
        print(f"Chatbot: {response}")

if __name__ == "__main__":
    main()
```

### Explanation of the Code

- **Importing Libraries**: We import the necessary libraries, including `os` for environment variables and `openai` for accessing the OpenAI API.
- **Setting the API Key**: We load the API key from the environment variable.
- **Conversation History**: We initialize an empty list `conversation_history` to keep track of the dialogue.
- **Function `get_chat_response`**: This function takes user input, appends it to the conversation history, sends it to the OpenAI API, and returns the chatbot's response.
  - **Parameters**:
    - `model`: Specifies which model to use (e.g., `gpt-4o-mini`).
    - `messages`: An array of message objects that includes the system message and the conversation history.
    - `temperature`: Controls the randomness of the output (0.0 for deterministic, 1.0 for more random).
    - `max_tokens`: Limits the number of tokens in the response.
    - `n`: Number of responses to generate.
    - `stop`: Optional parameter to specify stop sequences.
- **Main Loop**: The `main` function runs a loop that takes user input and prints the chatbot's response until the user types 'exit'.

## Step 3: Running Your Chatbot

To run your chatbot, open your terminal and execute the following command:

```bash
python chatbot.py
```

You should see a welcome message, and you can start chatting with your AI assistant!

## Conclusion

Congratulations! You've just built your first AI application using Python and the OpenAI API. This simple command line chatbot can be expanded with more features, such as saving conversation history, integrating with web applications, or even adding voice capabilities.

Feel free to explore the OpenAI API documentation for more advanced features and parameters. The possibilities are endless!
