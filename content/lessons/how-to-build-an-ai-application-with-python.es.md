---
description: "Una guía para principiantes sobre cómo construir tu primera aplicación de IA utilizando Python y la API de OpenAI."
tags: ["IA generativa", "LLMs", "tecnología de IA", "OpenAI"]
title: "Cómo Hacer Tu Primera Aplicación de IA"
authors: ["Charlytoc"]
--- 

![Programador frente a una laptop](https://raw.githubusercontent.com/breatheco-de/applied-ai-syllabus/refs/heads/main/assets/programmer-in-laptop.webp)

Construir una aplicación de IA puede ser un desafío sin experiencia previa. En este artículo, exploraremos la API de OpenAI para completaciones de chat, los parámetros más comunes, cómo obtener una clave de API de OpenAI y escribiremos el código necesario para construir una aplicación de chat en la línea de comandos. Esta puede ser la aplicación de IA perfecta para comenzar y el punto de entrada para construir cosas increíbles. ¡Comencemos!

## Paso 1: Configurando Tu Entorno

Antes de sumergirnos en la codificación, necesitamos configurar nuestro entorno. Sigue estos pasos:

1. **Instalar Python**: Asegúrate de tener Python instalado en tu máquina. Puedes descargarlo desde [python.org](https://www.python.org/downloads/).

2. **Instalar el SDK de OpenAI**: Abre tu terminal y ejecuta el siguiente comando para instalar el SDK de OpenAI:

   ```bash
   pip install openai
   ```

3. **Obtén Tu Clave de API de OpenAI**:

   - Ve al [panel de API de OpenAI](https://platform.openai.com/signup).
   - Regístrate o inicia sesión en tu cuenta.
   - Crea una nueva clave de API y guárdala de forma segura.

4. **Configura Tu Clave de API como una Variable de Entorno**:
   - En sistemas Unix, puedes hacer esto ejecutando:
     ```bash
     export OPENAI_API_KEY="tu_clave_api_aqui"
     ```
   - En Windows, puedes configurarlo en el símbolo del sistema:
     ```cmd
     set OPENAI_API_KEY="tu_clave_api_aqui"
     ```

## Paso 2: Creando Tu Aplicación de Chatbot

Ahora que tenemos nuestro entorno configurado, vamos a crear un chatbot simple en la línea de comandos. Crearemos un archivo Python llamado `chatbot.py`.

### Código para `chatbot.py`

```python
import os
import openai

# Cargar tu clave de API desde una variable de entorno
openai.api_key = os.getenv("OPENAI_API_KEY")

# Inicializar el historial de conversación
conversation_history = []

def get_chat_response(user_input):
    # Agregar la entrada del usuario al historial de conversación
    conversation_history.append({"role": "user", "content": user_input})

    response = openai.ChatCompletion.create(
        model="gpt-4o-mini",
        messages=[
            {"role": "system", "content": "Eres un asistente útil."},
        ] + conversation_history,  # Incluir el historial de conversación
        temperature=0.7,  # Controla la aleatoriedad de la salida
        max_tokens=150,   # Limita la longitud de la respuesta
        n=1,              # Número de respuestas a generar
        stop=None         # Puedes especificar secuencias de parada aquí
    )

    # Obtener la respuesta del asistente
    assistant_response = response.choices[0].message['content']

    # Agregar la respuesta del asistente al historial de conversación
    conversation_history.append({"role": "assistant", "content": assistant_response})

    return assistant_response

def main():
    print("¡Bienvenido al Chatbot! Escribe 'exit' para salir.")
    while True:
        user_input = input("Tú: ")
        if user_input.lower() == 'exit':
            break
        response = get_chat_response(user_input)
        print(f"Chatbot: {response}")

if __name__ == "__main__":
    main()
```

### Explicación del Código

- **Importando Bibliotecas**: Importamos las bibliotecas necesarias, incluyendo `os` para variables de entorno y `openai` para acceder a la API de OpenAI.
- **Configurando la Clave de API**: Cargamos la clave de API desde la variable de entorno.
- **Historial de Conversación**: Inicializamos una lista vacía `conversation_history` para llevar un registro del diálogo.
- **Función `get_chat_response`**: Esta función toma la entrada del usuario, la agrega al historial de conversación, la envía a la API de OpenAI y devuelve la respuesta del chatbot.
  - **Parámetros**:
    - `model`: Especifica qué modelo usar (por ejemplo, `gpt-4o-mini`).
    - `messages`: Un array de objetos de mensaje que incluye el mensaje del sistema y el historial de conversación.
    - `temperature`: Controla la aleatoriedad de la salida (0.0 para determinista, 1.0 para más aleatorio).
    - `max_tokens`: Limita el número de tokens en la respuesta.
    - `n`: Número de respuestas a generar.
    - `stop`: Parámetro opcional para especificar secuencias de parada.
- **Bucle Principal**: La función `main` ejecuta un bucle que toma la entrada del usuario y imprime la respuesta del chatbot hasta que el usuario escribe 'exit'.

## Paso 3: Ejecutando Tu Chatbot

Para ejecutar tu chatbot, abre tu terminal y ejecuta el siguiente comando:

```bash
python chatbot.py
```

Deberías ver un mensaje de bienvenida y puedes comenzar a chatear con tu asistente de IA.

## Conclusión

¡Felicidades! Has construido tu primera aplicación de IA utilizando Python y la API de OpenAI. Este simple chatbot en la línea de comandos se puede expandir con más características, como guardar el historial de conversación, integrarse con aplicaciones web o incluso agregar capacidades de voz.

No dudes en explorar la documentación de la API de OpenAI para obtener más funciones y parámetros avanzados. ¡Las posibilidades son infinitas!
