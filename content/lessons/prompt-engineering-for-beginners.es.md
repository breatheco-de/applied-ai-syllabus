---
description: "Domina el arte de la Ingeniería de Prompts para aprovechar al máximo el potencial de la IA. Aprende a redactar instrucciones precisas para obtener resultados de alta calidad. ¡Vamos a ello! 🎉"
tags: ["machine learning", "prompt engineering", "generative ai"]

---


# Prompt Engineering for Beginners 🤖
![Prompt](../../assets/charlytoc_A_robot_chef_preparing_a_gourmet_meal_in_a_kitchen_hi_86f30105-10ac-4b6f-811c-e90be102520a.webp)


La [IA generativa](https://cloud.google.com/use-cases/generative-ai?hl=es) ha llegado para quedarse, y con ello La ingeniería de prompts, mejor conocida como [Prompt Engineering](https://platform.openai.com/docs/guides/prompt-engineering), se ha convertido en una de las habilidades más demandadas por las empresas en la actualidad. Un Prompt Engineer es aquella persona que conoce las técnicas para lograr que un modelo de inteligencia artificial generativa produzca un resultado esperado.

El Prompt Engineering puede resumirse muy brevemente con el siguiente texto: Es la habilidad para escribir instrucciones claras y lograr que una IA las siga.

Cuando hablamos con una inteligencia artificial esperamos que nos entienda y haga lo que le pedimos al pie de la letra, sin embargo, un prompt mal hecho puede tender a resultados incorrectos. En esta guía descubrirás algunas de las técnicas más importantes para hacer prompts efectivos y que la IA trabaje para tus fines exactos, sea cual sea.

¡Vamos a darle! 🎉

## 1. Escribe instrucciones claras y detalladas

La primera técnica, es tan simple como redactar una instrucción claramente. Esto se dice fácil, pero mira los siguientes ejemplos para que entiendas su poder.

| Prompt | Description | Por qué |
|--------|-------------|-----|
| **Malo** | "Escribe un artículo sobre la convivencia entre perros y gatos." | No especifica el formato ni los detalles necesarios. |
| **Bueno** | "Escribe un artículo en formato markdown sobre la convivencia entre perros y gatos. Incluye una tabla que compare problemas comunes y sus soluciones. El artículo debe parecer escrito por un humano, agrega ejemplos, consejos. Extensión máxima: 2000 palabras" | Proporciona detalles específicos sobre el formato, contenido y extensión. |

En la práctica, un prompt "bueno" o "malo" realmente depende del caso de uso, pero generalmente cuando generamos texto, queremos una estructura respuesta específica. El prompt engineering nos ayuda a llegar a eso con esta y otras técnicas que veremos a continuación. Ten en cuenta que la claridad con la escribas está directamente relacionada al resultado que obtendrás.

## 2. Pídele al modelo que actúe como un experto en un área específica
Solicitar al modelo que asuma el rol de un experto puede mejorar significativamente la calidad de las respuestas, respondiendo con las palabras más acordes al campo que te interesa. Esto es especialmente útil cuando necesitas información detallada y especializada sobre un tema en específico, por ejemplo, puedes pedirle al modelo que actúe como un entrenador personal para que te ayude a armar una rutina de ejercicios, o como un chef para que te dé una receta detallada de un plato en específico, o incluso como un profesor de matemáticas para que te explique un concepto complejo, el límite es tu imaginación.

| Prompt | Description | Por qué |
|--------|-------------|-----|
| **Malo** | "Dame una lista de ejercicios para hacer en casa." | No especifica el tipo de ejercicios ni el contexto del usuario. |
| **Bueno** | "Actúa como un entrenador personal. Quiero armar una rutina para entrenar mis abdominales, brazos y espalda. Soy un hombre de 25 años, 1.70 m y 78 kg." | Proporciona detalles específicos sobre el usuario y el tipo de ejercicios necesarios. |

## 3. Uso de delimitadores

Utilizar delimitadores para definir claramente el texto o la tarea que se debe realizar puede evitar ambigüedades y mejorar la precisión de las respuestas. Los delimitadores pueden ser comillas, paréntesis, corchetes, o cualquier otro símbolo que indique claramente el inicio y el fin del texto o tarea. Esto es especialmente útil cuando necesitas que la IA realice una tarea que involucra algún tipo de texto que la IA debe usar para la generación de la respuesta. 

| Prompt | Description | Por qué |
|--------|-------------|-----|
| **Malo** | Traduce el texto al francés asegurar una buena calidad de traducción es muy fácil si sabes cómo usar IA. | Puede generar respuestas incorrectas al no delimitar claramente el texto a traducir. |
| **Bueno** | Traduce el texto al francés """asegurar una buena calidad de traducción es muy fácil si sabes cómo usar IA""". | Delimita claramente el texto a traducir, evitando ambigüedades. |


## 4. Deja que el modelo "piense"

Invitar al modelo a reflexionar antes de proporcionar una respuesta puede mejorar la precisión y profundidad de la misma. Esto se puede lograr formulando preguntas que requieran un análisis más profundo o que involucren múltiples pasos para llegar a una conclusión. Por ejemplo, en lugar de pedir directamente una respuesta a un problema matemático, puedes pedir al modelo que analice el problema paso por paso y reflexione sobre la respuesta final.

| Prompt | Description | Por qué |
|--------|-------------|-----|
| **Malo** | "Si un tren viaja a 60 km/h y otro a 80 km/h, ¿en qué punto se encontrarán si parten de ciudades separadas por 300 km?" | Pregunta directa que no invita a la reflexión. El modelo puede responder bien o mal, pero el prompt carece de instrucciones para la resolución y reflexión del problema. |
| **Bueno** | "Resuelve este problema matemático complejo: Si un tren viaja a 60 km/h y otro a 80 km/h, ¿en qué punto se encontrarán si parten de ciudades separadas por 300 km? Analiza el problema paso por paso y reflexiona si la respuesta final es correcta o no." | Invita al modelo a realizar un ejercicio mental antes de responder, conduciendo a una respuesta más apropiada |

> DISCLAIMER: Los modelos de IA generativa NO son capaces de "pensar" como los humanos. Sin embargo, al invitar al modelo a reflexionar sobre un problema o tarea, se le proporciona un contexto adicional que puede mejorar la calidad de la respuesta.

## 5. One shot, few shot, many shot examples
Proporcionar ejemplos específicos para guiar al modelo en la generación de respuestas más precisas y alineadas con lo esperado. Los ejemplos pueden ser uno solo (one shot), unos pocos (few shot), o muchos (many shot), dependiendo de la complejidad de la tarea y la cantidad de contexto necesario. Esta es una de las técnicas más poderosas para mejorar la calidad de las respuestas de la IA, ya que le proporciona información concreta y relevante para generar una respuesta con una estructura precisa. Los ejemplos también pueden ayudar a aclarar el contexto y las expectativas del usuario, lo que puede reducir la ambigüedad y mejorar la precisión de las respuestas.

| Prompt | Description | Por qué |
|--------|-------------|-----|
| **Malo** | "Genera un JSON de usuarios." | No proporciona ejemplos ni contexto. |
| **Bueno** | "Genera un JSON de usuarios. Aquí tienes dos ejemplos: [{\"name\": \"John\", \"age\": 30}, {\"name\": \"Jane\", \"age\": 25}]. Extiende esta lista a 10 usuarios." | Proporciona ejemplos específicos y una instrucción clara para extender la lista. |


## 6. Retrieval Augmented Generation (RAG) y Contexto

Los modelos son entrenados con grandes cantidades de datos, pero a veces necesitas proporcionarle un contexto específico para obtener una respuesta precisa, ya que estos datos no son infinitos. La técnica de Retrieval Augmented Generation (RAG) combina la recuperación de información comprobada con la generación de texto. Utiliza [embeddings](https://gustavo-espindola.medium.com/qu%C3%A9-son-los-embeddings-y-c%C3%B3mo-se-utilizan-en-la-inteligencia-artificial-con-python-45b751ed86a5) para buscar información relevante y luego generar una respuesta basada en esa información. Puedes aprender más sobre RAG [aquí](https://aws.amazon.com/es/what-is/retrieval-augmented-generation/). 

Esta técnica consiste en pasarle el **contexto** apropiado a la IA, por lo que también puedes pasarle manualmente la información útil. Generalmente es RAG es más usado por programadores avanzados, pero aquí te dejo un ejemplo de cómo se vería un prompt pasándole un contexto que la IA no tiene en sus datos de entrenamiento.

| Prompt | Description | Why |
|--------|-------------|-----|
| **Malo** | "Crea un personaje ficticio para un cómic." | No proporciona contexto ni detalles específicos. |
| **Bueno** | "Crea un personaje ficticio para un cómic basado en la siguiente descripción: <Charly es un desarrollador de IA con experiencia en Langchain, OpenAI, Django, Python, Javascript, Typescript, NodeJs, NextJs, Docker, React, Git, y muchas otras tecnologías. Es un apasionado de la tecnología y siempre está buscando nuevas formas de innovar. En su tiempo libre, le gusta leer cómics y jugar videojuegos.> Genera una descripción detallada del personaje, incluyendo habilidades, personalidad y apariencia." | Proporciona contexto específico y utiliza la técnica de RAG para generar una respuesta detallada. |


## Conclusión

La ingeniería de prompts es una habilidad esencial para interactuar eficazmente con modelos de inteligencia artificial. Al aplicar estas técnicas, puedes obtener respuestas más precisas, detalladas y útiles. Recuerda siempre ser claro y específico en tus instrucciones, y no dudes en pedirle al modelo que asuma roles específicos o que verifique sus respuestas. Con práctica y creatividad, podrás dominar el arte de escribir prompts efectivos y aprovechar al máximo las capacidades de la IA. ¡Buena suerte en tu viaje de aprendizaje! 🚀

Y si quieres aprender más sobre cómo convertirte en un Prompt Engineer, no dudes en hacer nuestro tutorial interactivo [aquí](#blank). ¡Hasta la próxima! 👋
