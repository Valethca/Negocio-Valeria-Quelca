# Guía de Métodos HTTP
En este documento se explican los 5 métodos HTTP principales utilizando ejemplos reales con la API pública de prueba `https://typicode.com`.
---
## 1. GET
* **¿Para qué sirve?**: Se utiliza exclusivamente para solicitar y recuperar información de un servidor sin modificar su estado.
* **Ejemplo Real**: Obtener el post con ID 1.
  * **URL**: `https://typicode.com/1`
  * **Código de Estado de Respuesta**: `200 OK` (Indica que la petición fue exitosa y devuelve los datos).
---
## 2. POST
* **¿Para qué sirve?**: Se utiliza para enviar datos al servidor con el fin de crear un nuevo recurso (como un nuevo post o un nuevo registro).
* **Ejemplo Real**: Crear un nuevo post.
  * **URL**: `https://typicode.com`
  * **Body enviado (JSON)**:
    ```json
    {
      "title": "Mi Nuevo Post",
      "body": "Contenido de prueba",
      "userId": 1
    }
    ```
  * **Código de Estado de Respuesta**: `201 Created` (El recurso se creó correctamente en el servidor simulado).
---
## 3. PUT
* **¿Para qué sirve?**: Se usa para actualizar por completo un recurso existente. Reemplaza toda la información actual con los nuevos datos enviados.
* **Ejemplo Real**: Reemplazar todo el post con ID 1.
  * **URL**: `https://typicode.com/1`
  * **Body enviado (JSON)**:
    ```json
    {
      "id": 1,
      "title": "Titulo Completamente Renovado",
      "body": "Nuevo contenido que pisa al anterior",
      "userId": 1
    }
    ```
  * **Código de Estado de Respuesta**: `200 OK` (Actualización completa realizada con éxito).
---
## 4. PATCH
* **¿Para qué sirve?**: Se utiliza para realizar actualizaciones parciales en un recurso. Solo modifica los campos específicos que se le envían, manteniendo intactos los demás.
* **Ejemplo Real**: Modificar únicamente el título del post con ID 1.
  * **URL**: `https://typicode.com/1`
  * **Body enviado (JSON)**:
    ```json
    {
      "title": "Solo cambie el titulo"
    }
    ```
  * **Código de Estado de Respuesta**: `200 OK` (Actualización parcial completada).
---
## 5. DELETE
* **¿Para qué sirve?**: Se utiliza para eliminar de forma definitiva un recurso específico del servidor.
* **Ejemplo Real**: Eliminar el post con ID 1.
  * **URL**: `https://typicode.com/1`
  * **Código de Estado de Respuesta**: `200 OK` o `204 No Content` (En JSONPlaceholder responde `200 OK` con un objeto vacío confirmando el borrado).
---
## Diferencia entre PUT y PATCH con mis palabras
La diferencia principal radica en el **volumen de datos que se actualiza**:
* **PUT** funciona como un "reemplazo total". Si un registro tiene 5 campos y usas PUT enviando solo 1, los otros 4 campos quedarán vacíos o borrados porque pisa el objeto anterior por completo.
* **PATCH** funciona como una "modificación quirúrgica". Solo altera los datos específicos que le envías en el body de la petición, dejando el resto de los atributos del recurso intactos y sin cambios.