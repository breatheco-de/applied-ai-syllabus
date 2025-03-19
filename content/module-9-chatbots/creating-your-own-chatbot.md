---
tags: ["Chatbots", "AI Agents", "Website Integration"]
authors: ["Charly Chacon"]
description: "Learn how to create your own AI agent using Chatbase and integrate it into your Gamma website with this step-by-step tutorial."
title: "How to Create an AI Agent in Chatbase and Integrate It into a Gamma Website"
---

## Introduction 🤖

AI agents can **enhance your website** by providing **automated customer support, answering FAQs, or assisting users interactively**. With **Chatbase**, you can create a **custom AI chatbot** and embed it into your **Gamma website** with ease.

In this tutorial, we’ll guide you through **creating your AI agent in Chatbase and integrating it into a Gamma website**.

---

## Step 1: Create a Chatbase Account 🔧

To get started, **sign up for a free Chatbase account**:

1. **Go to** [Chatbase](https://www.chatbase.co/).
2. Click **Sign Up** and create an account.
3. Once logged in, you’re ready to build your AI agent.

---

## Step 2: Create Your AI Agent in Chatbase 🤖

Now, let’s build your chatbot:

1. **Click "Create New Agent"** in Chatbase.
2. **Add knowledge sources** – You can upload:
   - 📄 **Files** (PDF, DOCX, TXT).
   - 🌐 **Website links** (URLs for scraping knowledge).
   - 📝 **Text** (Custom instructions or explanations).
   - ❓ **Q&A pairs** (Predefined questions and answers).
   - 📚 **Notion pages** (If you manage content on Notion).
3. Click **"Create Agent"** to finalize.

✅ **Example:** If you’re building a **customer service AI**, upload **FAQs and policy documents** to train your chatbot.

---

## Step 3: Test Your AI Agent 🛠️

Before embedding it, **test your chatbot**:

1. Go to the **Playground** in Chatbase.
2. **Ask questions** to check if responses are accurate.
3. **Refine your knowledge base** if needed.

✅ **Tip:** Ensure your chatbot provides **clear, relevant, and helpful answers** before publishing.

---

## Step 4: Make Your AI Agent Public & Get the Embed Code 🌍

To integrate your chatbot into a website, you must **make it public**:

1. Click **"Connect"** in Chatbase.
2. Select the **"Embed"** tab.
3. Click **"Make Public"** to enable embedding.
4. Choose **"Embed the iframe directly"** and **copy** the generated iframe code.

✅ **Example:** Your iframe code will look like this:

```html
<iframe
  src="https://www.chatbase.co/chatbot-iframe/YOUR_AGENT_ID"
  width="100%"
  style="height: 100%; min-height: 700px"
  frameborder="0"
>
</iframe>
```

Your AI agent is now **ready to be embedded** into your Gamma website! 🚀

---

## Step 5: Embed Your AI Agent in a Gamma Website 🌐

Now, let’s integrate the chatbot into **Gamma**:

1. **Log in** to your [Gamma account](https://gamma.app/).
2. Open an **existing website** or **create a new one**.
3. Add a **blank card** where you want the chatbot to appear.
4. Click **"Embed Apps & Webpages"** from the right-side menu.
5. Select **"Webpage or App"** and **drag & drop it** into your card.
6. **Paste the iframe URL** from Chatbase into the input field.
7. Select the **iframe element** and set **"Click Action"** to **Expand**.
8. Click **"Publish"** to finalize your website.

This is an example website I made with Chatbase and Gamma:

[Chatbase and Gamma Example](https://charly-chacon-portfolio-ghtdys0.gamma.site/)

---

## Conclusion 🎯

By combining **Chatbase and Gamma**, you can **easily create and embed an AI chatbot into your website**. Whether for **customer support, automation, or interactive learning**, AI agents enhance user experience and engagement. You can make a similar process in your own website.
