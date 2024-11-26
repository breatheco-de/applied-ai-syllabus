---
title: "Automatización de Clasificación de Correos y Notificaciones con Zapier"
description: "Aprende a configurar un flujo de trabajo en Zapier para clasificar correos, registrar detalles de clientes en Google Sheets y enviar notificaciones en tiempo real por WhatsApp. Una guía paso a paso utilizando Gmail, AI by Zapier, filtros, Google Sheets y WhatsApp Notifications."
tags: ["Automatización", "Zapier", "Gestión de Correos", "Productividad"]
author: ["Charlytoc"]
---

La automatización es una herramienta poderosa que permite a las empresas y personas optimizar sus flujos de trabajo, ahorrando tiempo y reduciendo el esfuerzo manual. Imagina un escenario en el que recibes correos electrónicos en tu bandeja de entrada de Gmail, los clasificas como spam, correos de clientes o licencias, y luego procesas esta información para actualizar una hoja de cálculo en Google Sheets y notificar a tu equipo a través de WhatsApp. ¿Suena complicado? Con Zapier, esto se puede automatizar sin problemas utilizando flujos de trabajo sin necesidad de programar.

En esta lección, te guiaremos paso a paso para configurar un flujo de trabajo automatizado utilizando **Gmail**, **AI by Zapier**, **Filter by Zapier**, **Google Sheets** y **WhatsApp Notifications**. Al final, tendrás un sistema sólido que te permitirá clasificar, procesar y actuar sobre los correos entrantes de manera eficiente.

---

### 🌟 Posibilidades Infinitas con Zapier

Zapier conecta miles de herramientas y aplicaciones, dándote la libertad de automatizar prácticamente cualquier tarea. Ya sea que estés gestionando consultas de clientes, rastreando prospectos o agilizando la comunicación interna, Zapier te permite crear flujos de trabajo (Zaps) que funcionan como tu asistente personal. Para esta lección, utilizaremos los siguientes nodos:

1. **Gmail**: Para detectar nuevos correos en tu bandeja de entrada.
2. **AI by Zapier**: Para analizar y clasificar el contenido del correo.
3. **Filter by Zapier**: Para decidir si un correo debe procesarse más.
4. **Google Sheets**: Para registrar los detalles de los clientes en una hoja de cálculo.
5. **WhatsApp Notifications**: Para enviar alertas en tiempo real a tu equipo sobre nuevos prospectos o correos de clientes.

---

### 💡 Descripción del Flujo de Trabajo

Así es como funcionará la automatización:

1. **Disparador**: Zapier detecta nuevos correos en tu bandeja de entrada de Gmail.
2. **Análisis**: El contenido del correo se envía a la IA de Zapier para extraer detalles clave (por ejemplo, remitente, asunto y clasificación).
3. **Filtro**: Solo los correos de clientes o prospectos relevantes avanzan al siguiente paso.
4. **Registro**: Los detalles extraídos se agregan a una **hoja de cálculo en Google Sheets** para llevar un registro.
5. **Notificación**: Una **notificación de WhatsApp** te informa que se ha agregado un nuevo cliente a la hoja.

Ahora, veamos cada paso y configuremos el flujo de trabajo.

---

### ⚙️ Paso 1: Gmail – Detectar Nuevos Correos

El primer paso es configurar Gmail como el disparador para tu Zap.

#### 1️⃣ Configuración

- **Aplicación**: Gmail
- **Evento de Disparador**: Nuevo Correo Electrónico
- **Cuenta**: Conecta tu cuenta de Gmail. Asegúrate de que Zapier tenga acceso a la bandeja de entrada que deseas monitorear.

#### 2️⃣ Personalización

- **Etiqueta o Bandeja**: Selecciona `INBOX` para monitorear todos los correos entrantes. Alternativamente, elige una etiqueta específica si deseas limitar el alcance.

#### 3️⃣ Prueba

- Haz clic en **Probar Disparador** para asegurarte de que Zapier puede acceder a tus correos. Zapier cargará datos de prueba (hasta tres correos) para verificar que todo funcione correctamente.

---

### ⚙️ Paso 2: AI by Zapier – Analizar y Clasificar Correos

A continuación, utilizamos **AI by Zapier** para extraer detalles del contenido del correo y determinar su clasificación.

#### 1️⃣ Configuración

- **Aplicación**: AI by Zapier
- **Evento de Acción**: Analizar y Devolver Datos

#### 2️⃣ Personalización

- **Instrucción (Prompt)**: Proporciona instrucciones detalladas para que la IA extraiga y clasifique la información. Usa campos dinámicos del paso de Gmail para incluir los detalles del correo. Ejemplo de instrucción:

  ```
  Eres un experto en análisis de correos electrónicos y extracción de información. Dado el siguiente contenido de correo:

  Fecha: {{268891439__date}}
  Email: {{268891439__from__email}}
  Contenido: {{268891439__body_plain}}
  Nombre: {{268891439__from__name}}
  Asunto: {{268891439__subject}}
  Adjuntos: {{268891439__all_attachments}}

  Extrae lo siguiente:
  - Fecha
  - Nombre y correo del remitente
  - Asunto
  - Cuerpo del correo
  - Si contiene adjuntos (Sí/No)

  Clasifica:
  - ¿Es spam? (Sí/No)
  - ¿Es de un cliente o usuario? (Sí/No)
  - ¿Es de un proveedor o institución? (Sí/No)

  Devuelve los resultados en el siguiente formato JSON:
  ```

  (Incluye ejemplos de entrada y salida para mayor claridad.)

#### 3️⃣ Prueba

- Prueba el nodo para asegurarte de que la IA devuelve datos estructurados (por ejemplo, fecha, asunto, tipo de remitente). Verifica que las clasificaciones sean precisas.

---

### ⚙️ Paso 3: Filter by Zapier – Procesar Correos Relevantes

Utiliza **Filter by Zapier** para asegurarte de que solo los correos relevantes (de clientes o instituciones) continúen.

#### 1️⃣ Configuración

- **Aplicación**: Filter by Zapier
- **Condición**:
  - `Es Cliente o Usuario` contiene `Sí`
  - O `Es Proveedor o Institución` contiene `Sí`.

#### 2️⃣ Personalización

- Usa los campos dinámicos del paso de la IA para configurar el filtro.

#### 3️⃣ Prueba

- Prueba el filtro para asegurarte de que solo los correos relevantes pasen al siguiente paso. Los correos spam deben detenerse aquí.

---

### ⚙️ Paso 4: Google Sheets – Registrar Detalles del Correo

Agrega los detalles de los clientes a una hoja de cálculo en Google Sheets para mantener un registro organizado.

#### 1️⃣ Configuración

- **Aplicación**: Google Sheets
- **Evento de Acción**: Crear Fila en la Hoja de Cálculo
- **Cuenta**: Conecta tu cuenta de Google.

#### 2️⃣ Personalización

- **Hoja de Cálculo**: Selecciona la hoja donde deseas registrar los datos (por ejemplo, "Clientes").
- **Hoja de Trabajo**: Elige la hoja específica (por ejemplo, "Hoja1").
- **Campos**: Asocia los campos del paso de la IA con las columnas de la hoja:
  - Nombre → Nombre del remitente
  - Email → Correo del remitente
  - Asunto → Asunto del correo
  - Fecha → Fecha del correo
  - Adjunto → Sí/No
  - Intención → Es Cliente o Usuario

#### 3️⃣ Prueba

- Prueba el paso para asegurarte de que los datos se agregan correctamente a la hoja de cálculo.

---

### ⚙️ Paso 5: WhatsApp Notifications – Notificar a tu Equipo

Finalmente, utiliza **WhatsApp Notifications** para alertar a tu equipo sobre nuevos clientes o prospectos.

#### 1️⃣ Configuración

- **Aplicación**: WhatsApp Notifications
- **Evento de Acción**: Enviar Mensaje
- **Cuenta**: Conecta tu cuenta de WhatsApp.

#### 2️⃣ Personalización

- **Plantilla**: Usa una plantilla preconfigurada o crea un mensaje personalizado. Ejemplo:
  ```
  🚀 Alerta de nuevo prospecto: [Nombre] está interesado en tus servicios.
  Correo: [Email]
  Asunto: [Asunto]
  Revisa los detalles en tu hoja de Google.
  ```
- **Campos Dinámicos**: Asocia los campos del paso de la IA (por ejemplo, nombre, correo, asunto).

#### 3️⃣ Prueba

- Prueba la notificación para asegurarte de que se envía correctamente con todos los detalles relevantes.

---

### 🎉 Flujo de Trabajo Final

Así es como funciona el flujo final:

1. Gmail detecta un nuevo correo en tu bandeja de entrada.
2. AI by Zapier analiza y clasifica el correo.
3. Filter by Zapier asegura que solo los correos relevantes continúen.
4. Google Sheets registra los detalles de los clientes o prospectos.
5. WhatsApp Notifications envía una alerta sobre nuevos clientes o leads.

Con esta automatización, nunca más perderás una consulta de cliente o un prospecto importante. Además, ahorrarás horas de esfuerzo manual, permitiéndote enfocarte en hacer crecer tu negocio.

---

### 🚀 ¡Empieza Ahora!

¿Listo para transformar la forma en que manejas tus correos? Configura esta automatización en Zapier hoy mismo y experimenta el poder de los flujos de trabajo automatizados. ¡Tu productividad alcanzará nuevos niveles! 🙌
