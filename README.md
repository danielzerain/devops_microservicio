# Curso: DevSecOps Engineer
# Trabajo Práctico: Pipeline CI/CD con Jenkins para Microservicios
**Proyecto de:** Daniel Zerain Medinaceli

**Repositorio:** [danielzerain/devops_microservicio](https://github.com/danielzerain/devops_microservicio.git)  
**Rama principal:** `main`  
**Tecnologías clave:** Docker, Docker Compose, Jenkins (Declarative Pipeline), Java 17, Apache Maven, JUnit, JaCoCo, SonarQube, Docker Hub.
---

## 1. Introducción y Objetivos

El objetivo de este trabajo práctico es diseñar, implementar y automatizar un pipeline de **Integración Continua y Entrega Continua (CI/CD)** para una aplicación con microservicios en Java utilizando **Jenkins Declarativo**. 

El flujo garantiza:
- Compilación y validación automática del código fuente desde GitHub.
- Ejecución de pruebas unitarias y generación de reportes de cobertura de código.
- Análisis estático de código y cumplimiento de criterios de calidad mediante **Quality Gates** en SonarQube.
- Generación, archivado y publicación versionada de artefactos binarios (`.jar`) en un repositorio empresarial (**Sonatype Nexus**).
- Aislamiento e higiene del entorno de ejecución en cada build.

---
