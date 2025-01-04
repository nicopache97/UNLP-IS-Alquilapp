# Alquilapp

[![Licencia](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Alquilapp es un proyecto educativo desarrollado en el marco de la materia "Ingeniería de Software" de la carrera de "Ingeniería en Computación" en la UNLP durante el año 2022. Este proyecto simuló un escenario real donde un cliente (representado por un enunciado) requería el desarrollo de una aplicación para el alquiler de autos. El objetivo principal fue poner en práctica diversas habilidades y técnicas de la ingeniería de software, desde la elicitación de requisitos hasta la implementación y gestión del proyecto con metodologías ágiles.

## Contexto del Proyecto

El proyecto surgió a partir del siguiente enunciado proporcionado por la cátedra:

> ¡Hola! Somos dos amigos que trabajamos juntos en una concesionaria y estamos interesados en llevar a cabo una idea que estuvimos charlando este último tiempo. Creemos que tiene un gran potencial, pero no sabemos mucho por donde empezar.
>
> A modo de resumen, es una app que queremos llamarla Alquilapp y deberá permitir a las personas alquilar un auto por un determinado periodo de tiempo. Los autos a alquilar no se deberán retirar por un punto fijo, sino que estarán distribuidos por toda la ciudad de La Plata (casco urbano).
>
> En caso de que estén interesados/as en ayudarnos y trabajar con nosotros, pueden contactarnos escribiendo a is.ic.unlp@gmail.com
>
> ¡Gracias!
>
> F&E

A partir de este enunciado, se aplicaron técnicas de elicitación de requisitos para comprender a fondo las necesidades del cliente y modelar las funcionalidades de Alquilapp.

## Metodología y Habilidades Adquiridas

Este proyecto se desarrolló utilizando la metodología Scrum, con seguimiento del progreso en Pivotal Tracker. A lo largo del desarrollo, se adquirieron y practicaron las siguientes habilidades:

*   **Elicitación de Requisitos:** Se utilizaron diversas técnicas para recopilar y documentar los requisitos del cliente, incluyendo entrevistas simuladas y análisis del enunciado.
*   **Modelado de Requisitos:** Se crearon diagramas de casos de uso y otros modelos para representar las funcionalidades de la aplicación.
*   **Documentación:** Se generaron documentos como el SRS (Software Requirements Specification) y el GPG (Guía de Planificación del Proyecto) para formalizar los requisitos y la planificación.
*   **Metodologías Ágiles (Scrum):** Se aplicaron los principios de Scrum, incluyendo tres sprints durante la cursada, donde cada integrante fue ScrumMaster durante un sprint, reuniones semanales con el equipo (daily), revisiones de sprint con el cliente y retrospectivas.
*   **Gestión de Proyectos con Pivotal Tracker:** Se utilizó Pivotal Tracker para gestionar las historias de usuario, el backlog del producto y el seguimiento del progreso del proyecto.
*   **Trabajo Colaborativo:** Se fomentó el trabajo en equipo, la comunicación efectiva y la resolución conjunta de problemas.
*   **Desarrollo con Ruby on Rails:** Se adquirieron habilidades en el desarrollo de aplicaciones web utilizando Ruby on Rails.
*   **Uso de Herramientas Profesionales:** Se utilizaron herramientas como Git para el control de versiones, Bundler para la gestión de dependencias y otras herramientas del ecosistema de Ruby on Rails.
* **Prácticas de Testing:** Se realizaron pruebas unitarias e integrales para asegurar la calidad del software.

## Características Principales

*   **Registro y Pago:** Creación de cuenta y registro de tarjeta mediante una API segura provista por la catedra.
*   **Mapa Interactivo:** Visualización en tiempo real de la ubicación de autos disponibles en un mapa.
*   **Activación con QR:** Inicio del alquiler mediante el escaneo del código QR del auto.
*   **Alquiler por Tiempo:** Selección de la duración del alquiler (mínimo 30 minutos, máximo 12 horas).
*   **Extensión de Alquiler:** Posibilidad de extender el alquiler hasta 3 veces, con un máximo de 24 horas y un incremento del 25% en el costo por hora por cada extensión.
*   **Devolución con QR:** Finalización del alquiler mediante el escaneo del código QR del auto.
*   **Multas:** Aplicación de multas por devoluciones fuera del tiempo estipulado.
*   **Monitoreo en tiempo real:** Combustible, velocidad y otros sensores de cada vehiculo mediante una API provista por la catedra.
*   **Mail** Mensajes de bienvenida y recuperacion de contraseña, a travez de la API *mailtrap* sin implementar durante la cursada
*   **Servidor LAN** Rails permite crear un servidor local para probar la aplicacion en diferentes dispositivos en red

## Tecnologías Utilizadas

*   **Lenguaje:** Ruby 3.1.2
*   **Framework:** Rails 7.0.4
*   **Base de Datos:** SQLite3
*   **Frontend:** Bootstrap 5.2.2
*   **Backend/API:** API personalizada (no pública), Jbuilder, HTTParty
*   **Otros:** Hirb, MailTrap, JSON, Sprockets-Rails, Puma

## Instalación

1.  Clonar el repositorio: `git clone https://github.com/nicopache97/UNLP-IS-Alquilapp.git`
2.  Navegar al directorio del proyecto: `cd UNLP-IS-Alquilapp`
3.  Instalar las dependencias: `bundle install`
4.  Configurar las variables de entorno y credenciales
5.  Ejecutar el servidor: `rails server -b 0.0.0.0`

## Uso

La aplicación se accede desde cualquier navegador en la red local una vez que se inicia el servidor con el comando `rails server -b 0.0.0.0`. Abre tu navegador y navega a `http://localhost:3000`.

## Licencia

Este proyecto se distribuye bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para obtener más detalles.

## Contactos

[![LinkedIn Nicolas](https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nicolas-pacheco-7b9652268/) Nicolas Pacheco 

[![LinkedIn Joaquin](https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/cijm/) Joaquin Matto 

[![LinkedIn Juan](https://img.shields.io/badge/LinkedIn-blue?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/juangzottig/) Juan Zottig 
