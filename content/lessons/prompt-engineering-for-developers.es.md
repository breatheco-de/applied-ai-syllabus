---
description: Aprende las técnicas más importantes para hacer prompts efectivos y lograr que la IA trabaje para tus proyectos como desarrollador. ¡Vamos a empezar! 🎉
tags: ["prompt engineering", "ia generativa"]
---

# Ingeniería de Prompts para Desarrolladores 🤖

![Prompt](https://raw.githubusercontent.com/breatheco-de/applied-ai-syllabus/main/assets/charlytoc_A_prompt_engineer_crafting_precise_instructions_for_a_f16a9847-9632-4c57-b29f-7379d19d3d1f.webp)

Como [desarrollador de sotfware](https://www.ibm.com/es-es/topics/software-development), probablemente uses [Inteligencia Artificial](https://es.wikipedia.org/wiki/Inteligencia_artificial) todos los días. Tal vez en tu editor de código, en tu cliente de correo electrónico, o incluso en tu [motor de búsqueda](https://www.perplexity.ai/) favorito. La IA generativa ha llegado para quedarse, y con ella, la [ingeniería de prompts](#LINK) se ha convertido en una de las [habilidades más demandadas](https://www.telefonica.com/es/sala-comunicacion/blog/prompt-engineering-profesion-mayor-demanda-futuro/) por las empresas. Un **Ingeniero de Prompts **es alguien que conoce las técnicas para lograr que un modelo de [IA generativa](https://aws.amazon.com/es/what-is/generative-ai/) produzca un resultado esperado.

> La Ingeniería de Prompts se puede resumir muy brevemente con el siguiente texto: Es la habilidad de escribir instrucciones claras y lograr que una IA las siga.


## Por qué es importante la Ingeniería de Prompts
Cuando hablamos con una inteligencia artificial, esperamos que nos entienda y haga exactamente lo que pedimos; sin embargo, un [prompt](https://4geeks.com/es/lesson/que-es-un-prompt) mal hecho puede llevar a resultados incorrectos. En esta guía, descubrirás algunas de las técnicas más importantes para hacer prompts efectivos y lograr que la IA trabaje para tus propósitos exactos, arregle tu código, escriba documentación para tus proyectos, o incluso genere nuevas ideas de programas, traduzca de un lenguaje de programación a otro, y mucho más.

¡Vamos a empezar! 🎉

## 1. Escribe instrucciones claras y detalladas

La primera técnica es tan simple como escribir una instrucción clara. Esto suena fácil, pero mira los siguientes ejemplos para entender su poder.

| Prompt    | Descripción                                                                                                                                                                         | Por qué                                                                                     |
| --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| **Malo**  | "Escribe un script en Python."                                                                                                                                                      | No especifica la funcionalidad ni los detalles necesarios.                                  |
| **Bueno** | "Escribe un script en Python que lea un archivo CSV y muestre el contenido en una tabla formateada. El script debe manejar excepciones e incluir comentarios explicando cada paso." | Proporciona detalles específicos sobre la funcionalidad, manejo de errores y documentación. |

Cuando usamos IA generativa, necesitamos ser lo más específicos posible para obtener los resultados esperados. Cuanto más detalladas sean las instrucciones, más probable es que la IA genere la salida deseada. Recuerda, la IA no tiene sentido común, por lo que necesitas proporcionar toda la información necesaria para producir respuestas de alta calidad. Si no estás seguro de qué incluir, piensa en lo que le dirías a un colega para completar la tarea.

Por ejemplo, al pedirle al modelo que produzca un script, sé claro con los siguientes detalles:

- El lenguaje de programación a usar.
- La funcionalidad que debe tener el script.
- La entrada y salida del script.
- El manejo de errores.
- Los comentarios y la documentación.
- Si es necesario, las bibliotecas o frameworks a usar.

## 2. Pide al modelo que actúe como un experto en un área específica

Pedirle al modelo que asuma el rol de un experto puede mejorar significativamente la calidad de las respuestas, respondiendo con las palabras más apropiadas para el campo que te interesa. Esto es especialmente útil cuando necesitas información detallada y especializada sobre un tema específico. Por ejemplo, puedes pedirle al modelo que actúe como un ingeniero de software senior para ayudarte a diseñar un sistema escalable, o como un experto en ciberseguridad para darte una auditoría de seguridad detallada, o incluso como un científico de datos para explicarte un algoritmo complejo, el límite es tu imaginación.

| Prompt    | Descripción                                                                                                                                                                      | Por qué                                                                               |
| --------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| **Malo**  | "Dame una lista de mejores prácticas de codificación."                                                                                                                           | No especifica el lenguaje de programación ni el contexto del usuario.                 |
| **Bueno** | "Actúa como un ingeniero de software senior. Quiero saber las mejores prácticas para escribir código limpio y eficiente en Python. Incluye ejemplos y errores comunes a evitar." | Proporciona detalles específicos sobre el usuario y el tipo de información necesaria. |

## 3. Usa delimitadores

Usar delimitadores para definir claramente el texto o la tarea a realizar puede evitar ambigüedades y mejorar la precisión de las respuestas. Los delimitadores pueden ser comillas, paréntesis, corchetes, o cualquier otro símbolo que indique claramente el inicio y el final del texto o tarea. Esto es especialmente útil cuando necesitas que la IA realice una tarea que involucra algún tipo de texto que la IA debe usar para generar la respuesta. Por ejemplo, puedes pasar diferentes archivos de tu repositorio para proporcionar a la IA el contexto necesario para generar una respuesta precisa.

| Prompt    | Descripción                                                                                                                 | Por qué                                                                              |
| --------- | --------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| **Malo**  | "Traduce el código a JavaScript asegúrate de que la calidad de la traducción sea buena es muy fácil si sabes cómo usar IA." | Puede generar respuestas incorrectas al no delimitar claramente el texto a traducir. |
| **Bueno** | "Traduce el código a JavaScript """def add(a, b): return a + b""".                                                          | Delimita claramente el texto a traducir, evitando ambigüedades.                      |

## 4. Deja que el modelo "piense"

Invitar al modelo a reflexionar antes de proporcionar una respuesta puede mejorar la precisión y profundidad de la respuesta. Esto se puede lograr formulando preguntas que requieran un análisis más profundo o que involucren múltiples pasos para llegar a una conclusión. Por ejemplo, en lugar de pedir directamente una respuesta a un problema de codificación, puedes pedirle al modelo que analice el problema paso a paso y reflexione sobre si la respuesta final es correcta o no. Al producir fragmentos de código, por ejemplo, puedes intentar pedirle al modelo que analice la complejidad temporal de una función y reflexione sobre su eficiencia, o que compare dos algoritmos diferentes y explique cuál es más eficiente, o tal vez generar la salida esperada de un fragmento de código antes de darte una solución.

| Prompt    | Descripción                                                                                                                                           | Por qué                                                                                                                                                                                         |
| --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Malo**  | "Si una función tiene una complejidad temporal de O(n) y otra de O(log n), ¿cuál es más eficiente?"                                                   | Pregunta directa que no invita a la reflexión. El modelo puede responder correctamente o incorrectamente, pero el prompt carece de instrucciones para resolver y reflexionar sobre el problema. |
| **Bueno** | "Analiza la complejidad temporal de estas dos funciones: una con O(n) y otra con O(log n). Reflexiona sobre cuál es más eficiente y explica por qué." | Invita al modelo a realizar un ejercicio mental antes de responder, llevando a una respuesta más adecuada.                                                                                      |

> **DISCLAIMER**: Los modelos de IA generativa NO son capaces de "pensar" como los humanos. Sin embargo, al invitar al modelo a reflexionar sobre un problema o tarea, se proporciona contexto adicional que puede mejorar la calidad de la respuesta.

## 5. Ejemplos de un solo disparo, pocos disparos, muchos disparos

Proporcionar ejemplos específicos para guiar al modelo en la generación de respuestas más precisas y alineadas con lo que se espera. Los ejemplos pueden ser uno (un solo disparo), unos pocos (pocos disparos), o muchos (muchos disparos), dependiendo de la complejidad de la tarea y la cantidad de contexto necesario. Esta es una de las técnicas más poderosas para mejorar la calidad de las respuestas de la IA, ya que proporciona información concreta y relevante para generar una respuesta con una estructura precisa. Los ejemplos también pueden ayudar a aclarar el contexto y las expectativas del usuario, lo que puede reducir la ambigüedad y mejorar la precisión de las respuestas. Esto es especialmente útil cuando necesitas que la IA genere respuestas en un formato estructurado, como fragmentos de código, listas o tablas.

| Prompt    | Descripción                                                                                                                                                                                                                                                                            | Por qué                                                                          |
| --------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| **Malo**  | "Genera un JSON de endpoints de API."                                                                                                                                                                                                                                                  | No proporciona ejemplos ni contexto.                                             |
| **Bueno** | "Genera un JSON de endpoints de API. Aquí hay dos ejemplos: [{\"method\": \"GET\", \"endpoint\": \"/users\", \"description\": \"Retrieve user list\"}, {\"method\": \"POST\", \"endpoint\": \"/users\", \"description\": \"Create a new user\"}]. Extiende esta lista a 10 endpoints." | Proporciona ejemplos específicos y una instrucción clara para extender la lista. |

## 6. Generación Aumentada por Recuperación (RAG) y Contexto

Los modelos están entrenados con grandes cantidades de datos, pero a veces necesitas proporcionar un contexto específico para obtener una respuesta precisa, ya que estos datos no son infinitos. La técnica de Generación Aumentada por Recuperación (RAG) combina la recuperación de información probada con la generación de texto. Utiliza [embeddings](https://gustavo-espindola.medium.com/qu%C3%A9-son-los-embeddings-y-c%C3%B3mo-se-utilizan-en-la-inteligencia-artificial-con-python-45b751ed86a5) para buscar información relevante y luego generar una respuesta basada en esa información. Puedes aprender más sobre RAG [aquí](https://aws.amazon.com/es/what-is/retrieval-augmented-generation/).

Esta técnica consiste en proporcionar a la IA el **contexto** adecuado, por lo que también puedes pasar manualmente información útil. Generalmente, RAG es más utilizado por programadores avanzados, y profundizaremos en cómo usar RAG con Python en un futuro cercano, ¡así que mantente atento! Sin embargo, aquí hay un ejemplo de cómo sería un prompt al pasar un contexto que la IA no tiene en sus datos de entrenamiento.

| Prompt    | Descripción                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Por qué                                                                                           |
| --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| **Malo**  | "Crea un personaje ficticio para un juego."                                                                                                                                                                                                                                                                                                                                                                                                                                                          | No proporciona contexto ni detalles específicos.                                                  |
| **Bueno** | "Crea un personaje ficticio para un juego basado en la siguiente descripción: <Charly es un desarrollador de IA con experiencia en Langchain, OpenAI, Django, Python, Javascript, Typescript, NodeJs, NextJs, Docker, React, Git, y muchas otras tecnologías. Le apasiona la tecnología y siempre busca nuevas formas de innovar. En su tiempo libre, le gusta leer cómics y jugar videojuegos.> Genera una descripción detallada del personaje, incluyendo habilidades, personalidad y apariencia." | Proporciona un contexto específico y utiliza la técnica RAG para generar una respuesta detallada. |

Algunas bibliotecas útiles de RAG para Python son: [Pinecone](https://www.pinecone.io/), [Chroma](https://docs.trychroma.com/getting-started), [Ollama](https://ollama.com/library), ¡y muchas más! Incluso puedes intentar construir tu propio almacenamiento vectorial.

## Conclusión

La ingeniería de prompts es una habilidad esencial para interactuar eficazmente con modelos de inteligencia artificial. Usar las técnicas adecuadas puede ayudarte a obtener respuestas más precisas, detalladas y útiles. Siempre recuerda ser claro y específico en tus instrucciones, y no dudes en pedirle al modelo que asuma roles específicos o verifique sus respuestas. Con práctica y creatividad, puedes dominar el arte de escribir prompts efectivos y aprovechar al máximo las capacidades de la IA. ¡Buena suerte en tu viaje de codificación! Deja en los comentarios cuáles son tus técnicas favoritas para la ingeniería de prompts y tus modelos favoritos! 🚀 

Y si quieres aprender más sobre cómo convertirte en un experto en ingeniería de prompts, ¡no dudes en explorar nuestro [curso gratuito de Prompt Engineering](https://4geeks.com/interactive-exercise/prompt-engineering-exercise-course)!
