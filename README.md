# Tarea-3-Dockerizacion

Tarea 3, correspondiente al curso de Ingeniería de Software. En esta tarea, se aprenderá a conectar su aplicación con una base de datos, añadir una interfaz de usuario básica y empaquetar todo en contenedores Docker para que pueda ejecutarse en cualquier computadora.

## Guía de Instalación y Ejecución de la Aplicación

### Instalación y Ejecución

1. **Clonar el repositorio:**
    ```bash
    git clone https://github.com/hectormrales/Tarea-3-Dockerizacion.git
    cd Tarea-3-Dockerizacion
    ```
2. **Compilar con maven:**
    ```bash
    mvn spring-boot:run
    ```
3. **Ejecutar la aplicación:**
    ```Acceder al endpoint
    En el navegadr: http://localhost:8080/login
    ```

### Despliegue usando Docker

1. **Construir la imagen Docker:**
    ```bash
    docker-compose up --build 
    ```

### Despliegue usando Docker Compose

1. **Ejecutar Docker Compose:**
    ```bash
    docker-compose up
    ```
2. **Acceder a la aplicación:**
    Abra su navegador y diríjase a `http://localhost:8080`.

### Capturas de Pantalla

A continuación se presentan capturas de pantalla de la aplicación ejecutándose con Docker:

![Captura de Pantalla](https://github.com/hectormrales/Tarea-3-Dockerizacion/blob/main/Capturas/Screenshot%202025-04-04%20130727.png?raw=true)
![Captura de Pantalla](https://github.com/hectormrales/Tarea-3-Dockerizacion/blob/main/Capturas/Screenshot%202025-04-04%20125751.png?raw=true)
![Captura de Pantalla](https://github.com/hectormrales/Tarea-3-Dockerizacion/blob/main/Capturas/Screenshot%202025-04-04%20125811.png?raw=true)
![Captura de Pantalla](https://github.com/hectormrales/Tarea-3-Dockerizacion/blob/main/Capturas/Screenshot%202025-04-04%20125821.png?raw=true)
![Captura de Pantalla](https://github.com/hectormrales/Tarea-3-Dockerizacion/blob/main/Capturas/Screenshot%202025-04-04%20130611.png?raw=true)
