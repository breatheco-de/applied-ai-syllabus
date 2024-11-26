---
title: "Automating Email Classification and Notifications with Zapier"
description: "Learn how to set up a Zapier workflow to classify emails, log customer details in Google Sheets, and send real-time WhatsApp notifications. A step-by-step guide using Gmail, AI by Zapier, Filters, Google Sheets, and WhatsApp Notifications."
tags: ["Automation", "Zapier", "Email Management", "Productivity"]
author: ["Charlytoc"]
---

Automation is a powerful tool that enables businesses and individuals to streamline their workflows, saving time and reducing manual effort. Imagine a scenario where you receive emails in your Gmail inbox, classify them as spam, customer emails, or licenses, and then process this information to update a Google Sheet and notify your team through WhatsApp. Sounds complex? With Zapier, this can be automated seamlessly using no-code workflows.

In this lesson, we’ll walk you through the process of setting up a fully automated workflow using **Gmail**, **AI by Zapier**, **Filter by Zapier**, **Google Sheets**, and **WhatsApp Notifications**. By the end, you'll have a robust system in place to classify, process, and act on incoming emails efficiently.

---

### 🌟 Endless Possibilities with Zapier

Zapier connects thousands of tools and applications, giving you the freedom to automate virtually any task. Whether you’re managing customer inquiries, tracking leads, or streamlining internal communication, Zapier empowers you to create workflows (Zaps) that operate like your personal assistant. For this lesson, we’ll leverage the following nodes:

1. **Gmail**: To detect new emails in your inbox.
2. **AI by Zapier**: To analyze and classify the email content.
3. **Filter by Zapier**: To decide if an email should be processed further.
4. **Google Sheets**: To log customer details into a spreadsheet.
5. **WhatsApp Notifications**: To send real-time alerts to your team about new leads or customer emails.

---

### 💡 Workflow Overview

Here’s how the automation works:

1. **Trigger**: Zapier listens for new emails in your Gmail inbox.
2. **Analyze**: The email content is sent to Zapier's AI to extract key details (e.g., sender, subject, and classification).
3. **Filter**: Only customer emails or relevant leads proceed to the next step.
4. **Log**: Extracted details are added to a **Google Sheet** for record-keeping.
5. **Notify**: A **WhatsApp notification** informs you that a new customer has been added to the sheet.

Let’s dive into each step and configure the workflow.

---

### ⚙️ Step 1: Gmail – Detect New Emails

The first step is to set up Gmail as the trigger for your Zap.

#### 1️⃣ Setup

- **App**: Gmail
- **Trigger Event**: New Email
- **Account**: Connect your Gmail account. Ensure Zapier has access to the inbox you want to monitor.

#### 2️⃣ Configure

- **Label or Mailbox**: Select `INBOX` to monitor all incoming emails. Alternatively, choose a specific label if you want to limit the scope.

#### 3️⃣ Test

- Click **Test Trigger** to ensure Zapier can access your emails. Zapier will pull sample data (up to three emails) for testing. Verify that the test emails match your expectations.

---

### ⚙️ Step 2: AI by Zapier – Analyze and Classify Emails

Next, we use **AI by Zapier** to extract details from the email content and determine its classification.

#### 1️⃣ Setup

- **App**: AI by Zapier
- **Action Event**: Analyze and Return Data

#### 2️⃣ Configure

- **Prompt**: Provide detailed instructions for the AI to extract and classify information. Use dynamic fields from the Gmail step to include email details. Example prompt:

  ```
  You are a master of email analysis and information extraction. Given the following email content:

  Date: {{268891439__date}}
  Email: {{268891439__from__email}}
  Content: {{268891439__body_plain}}
  Name: {{268891439__from__name}}
  Subject: {{268891439__subject}}
  Attachments: {{268891439__all_attachments}}

  Extract the following:
  - Date
  - Sender's name and email
  - Subject
  - Body
  - Whether there is an attachment (Yes/No)

  Classify:
  - Is it spam? (Yes/No)
  - Is it from a customer or user? (Yes/No)
  - Is it from a supplier or institution? (Yes/No)

  Return the results in the following JSON format:
  ```

  (Include example input-output data for clarity.)

#### 3️⃣ Test

- Test the node to ensure the AI returns structured data (e.g., date, subject, sender type). Verify that the classifications are accurate.

---

### ⚙️ Step 3: Filter by Zapier – Process Relevant Emails

Use **Filter by Zapier** to ensure only customer or institution emails proceed.

#### 1️⃣ Setup

- **App**: Filter by Zapier
- **Condition**:
  - `Is Client or User` contains `Yes`
  - OR `Is Supplier or Institution` contains `Yes`.

#### 2️⃣ Configure

- Use dynamic fields from the AI step to set up the filter.

#### 3️⃣ Test

- Test the filter to ensure only relevant emails pass through. Spam emails should stop here.

---

### ⚙️ Step 4: Google Sheets – Log Email Details

Add customer details to a Google Sheet for easy tracking.

#### 1️⃣ Setup

- **App**: Google Sheets
- **Action Event**: Create Spreadsheet Row
- **Account**: Connect your Google account.

#### 2️⃣ Configure

- **Spreadsheet**: Select the Google Sheet where you want to log data (e.g., "Customer Leads").
- **Worksheet**: Choose the correct worksheet (e.g., "Sheet1").
- **Fields**: Map fields from the AI step to the appropriate columns:
  - Name → Sender's name
  - Email → Sender's email
  - Subject → Email subject
  - Date → Email date
  - Attachment → Yes/No
  - Intent → Is Client or User

#### 3️⃣ Test

- Test the step to ensure data is added to the correct row in your spreadsheet.

---

### ⚙️ Step 5: WhatsApp Notifications – Notify Your Team

Finally, use **WhatsApp Notifications** to alert your team about new customers or leads.

#### 1️⃣ Setup

- **App**: WhatsApp Notifications
- **Action Event**: Send Message
- **Account**: Connect your WhatsApp account.

#### 2️⃣ Configure

- **Template**: Use a pre-configured template or create a custom message. Example:
  ```
  🚀 New lead alert: [Name] is interested in your services!
  Email: [Email]
  Subject: [Subject]
  Check the details in your Google Sheet.
  ```
- **Dynamic Fields**: Map the fields from previous steps (e.g., name, email, subject).

#### 3️⃣ Test

- Test the notification to ensure it is sent correctly and includes all relevant details.

---

### 🎉 Final Workflow

Here’s how the final workflow operates:

1. Gmail detects a new email in your inbox.
2. AI by Zapier analyzes and classifies the email.
3. Filter by Zapier ensures only relevant emails continue.
4. Google Sheets logs customer details for record-keeping.
5. WhatsApp Notifications sends an alert about new customers or leads.

With this automation in place, you’ll never miss a customer inquiry or important lead again. Plus, you save hours of manual effort, allowing you to focus on growing your business.

---

### 🚀 Get Started Now!

Ready to transform how you handle emails? Build this Zapier automation today and experience the power of streamlined workflows. With tools like AI and real-time notifications, your productivity will reach new heights! 🙌
