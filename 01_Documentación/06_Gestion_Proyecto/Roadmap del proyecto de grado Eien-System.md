# Roadmap del proyecto de grado: de la idea al despliegue

Eien-System · Kizuna Logística S.A.S. · Tecnólogo en Análisis y Desarrollo de Software (SENA, programa 228118)

Versión 1.1 · 21 de noviembre de 2026 · Autor: David Alejandro Meyer Romero · Reemplaza a la versión 1.0 del 29 de octubre de 2026

## 1. Control de cambios (v1.0 a v1.1)

- **Calendario.** Se pasa de 56 a 64 semanas a unas 31 semanas (21/11/2026 a 27/06/2027), con 2 días de margen antes de la fecha límite del 29/06/2027 y un ritmo de 9 horas semanales. El arranque se corrió del 16 al 21 de noviembre y se consumió una de las dos semanas de colchón.
- **Alcance.** MVP más pequeño y documentos más ligeros: de 12 a 15 requisitos funcionales y de 6 a 8 no funcionales.
- **Tecnología.** El frontend pasa de React a plantillas Jinja2 con Bootstrap 5. React queda para después del grado (ADR-001).
- **Gestión.** Trello como tablero (indicado por el SENA) y prácticas profesionales de equipo: Pull Requests, Conventional Commits, versionado semántico, registro de decisiones, integración continua y proceso personal medido.
- **Repositorio.** Estructura GFPI-F-135 V04 confirmada, carpetas adicionales aprobadas por el instructor, carpeta `test_uploads/` ignorada por Git y repositorio público sin datos personales ni secretos.
- **Fase 0.** Se retira la página web de práctica; HTML, CSS y JavaScript se aprenden justo a tiempo en el sprint 1.

- **Bitácora de cierre de fase.** Cada fase termina con un registro obligatorio en la bitácora del proyecto (sección 6).

## 2. Cómo usar este roadmap

Este documento es un mapa para llevar un proyecto real desde la idea hasta un sistema desplegado y funcional, trabajando solo. Se apoya en tres cosas: las competencias y resultados de aprendizaje del diseño curricular del programa, la estructura de repositorio GFPI-F-135 V04 y el formato IEEE 830.

Una idea ordena todo: el diseño curricular lista los productos que debe saber entregar un egresado (informe de requisitos, informes de análisis y diseño, propuesta técnica, base de datos, prototipo, código, informe de pruebas y manuales). El repositorio terminado es, literalmente, el portafolio de esos productos.

Cada fase tiene siempre el mismo formato: objetivo, competencia SENA, qué aprender (solo lo necesario), qué producir y en qué carpeta, y una puerta de calidad medible. Una fase no se da por cerrada si no cumple su puerta y no tiene su registro de cierre en la bitácora.

Reglas de juego:

- **Aprender justo a tiempo.** No se estudia todo Python antes de empezar; se estudia lo que la fase siguiente necesita.
- **Todo artefacto vive en el repositorio**, en su carpeta, con versión y fecha.
- **Desplegar pronto.** El primer despliegue ocurre en el sprint 1, con una página casi vacía.
- **Alcance controlado.** Se define un MVP; todo lo demás es «después del grado».
- **Si algo se atrasa, se recorta alcance**, nunca calidad ni fechas de revisión.
- **Ritmo de referencia: 9 horas semanales**, repartidas en un bloque largo de unas 4 horas y tres bloques cortos de 1 a 1,5 horas. Los trayectos y tiempos de espera se usan para lectura técnica y no cuentan como horas del proyecto.
- **El descanso es parte del plan.** No se programa el 100 % del tiempo libre.

- **Bitácora de cierre obligatoria.** Cada fase termina con un registro en `01_Documentacion/Gestion_Proyecto/Bitacora_Fases.md`. Sin registro, la fase no se cierra.

## 3. Vista general y calendario

- **Fase 0. Fundamentos y entorno.** 2 semanas (21 nov – 6 dic), unas 20 h. Competencia 220501046.
- **Fase 1. Idea y levantamiento de información.** 2 semanas (7 dic – 20 dic), 18 h. Competencia 220501092.
- **Fase 2. Especificación de requisitos IEEE 830.** 3 semanas (21 dic – 10 ene), 27 h. Competencia 220501092.
- **Fase 3. Propuesta técnica y planeación.** 2 semanas (11 ene – 24 ene), 18 h. Competencia 220501094 y resultado 01 de la 220501093.
- **Fase 4. Análisis y modelado.** 2 semanas (25 ene – 7 feb), 18 h. Competencia 220501093.
- **Fase 5. Diseño técnico y UI/UX.** 3 semanas (8 feb – 28 feb), 27 h. Competencia 220501095.
- **Fase 6. Construcción.** 11 semanas (1 mar – 16 may), 99 h: 5 sprints de 2 semanas y 1 semana de estabilización. Competencia 220501096.
- **Fase 7. Pruebas y calidad.** 2 semanas formales (17 may – 30 may), 18 h, más pruebas continuas durante la fase 6. Competencia 220501098 y resultado 05 de la 220501096.
- **Fase 8. Despliegue e implantación.** 2 semanas (31 may – 13 jun), 18 h. Competencia 220501097.
- **Fase 9. Cierre y sustentación.** 1 semana (14 jun – 20 jun), 9 h.
- **Colchón para imprevistos.** 1 semana (21 jun – 27 jun), 9 h.

Total: unas 31 semanas y 280 horas desde el 21 de noviembre, con margen los días 28 y 29 de junio. La fecha límite es el 29/06/2027, un día antes de empezar la etapa práctica (864 horas según el diseño curricular). Diciembre y Semana Santa (22 a 28 de marzo) caen dentro de las fases 1, 2 y 6; el colchón de una semana existe para absorber imprevistos.

En paralelo corre una línea transversal con las demás competencias del programa: inglés (README y commits en inglés, lectura de documentación técnica), investigación formativa (cada decisión técnica con una comparación breve y fuentes), emprendimiento (un canvas de modelo de negocio de Eien-System como producto) y comunicación y ética (sustentaciones ensayadas y manejo responsable de datos personales).

## 4. Alcance y tecnologías

### 4.1 Alcance del MVP

- **Debe (define el MVP):** inicio de sesión con roles (administrador, despachador y conductor); registro y validación de guías; gestión básica de conductores y vehículos; asignación manual y hoja de ruta; módulo del conductor para celular con cambio de estados y evidencia digital (firma o foto); seguimiento público por código; registro de auditoría de cambios de estado.
- **Debería (solo si sobra tiempo, en este orden):** panel de indicadores de entregas a tiempo frente a retrasadas, sugerencia automática de asignación (RF-02 del SRS anterior) y notificaciones por correo.
- **Después del grado:** módulo de inteligencia artificial, sensores IoT, aplicación móvil nativa, internacionalización (español, inglés y japonés) e interfaz en React.

### 4.2 Stack definitivo

- **Backend:** Python 3.11 o superior, FastAPI y Pydantic.
- **Datos:** PostgreSQL 15 o superior, SQLAlchemy y Alembic (migraciones).
- **Interfaz:** plantillas Jinja2, Bootstrap 5 y JavaScript básico (firma en pantalla y captura de fotos).
- **Seguridad:** contraseñas con bcrypt, autenticación con JWT (OAuth2 de FastAPI) y HTTPS.
- **Contenedores:** Docker y Docker Compose.
- **Calidad:** pytest, pytest-cov, Ruff, Black y pre-commit.
- **Automatización:** GitHub Actions.
- **Documentación de la API:** Swagger/OpenAPI, incluida en FastAPI.
- **Hosting:** se decide en la fase 3 comparando 2 o 3 opciones y verificando los planes y límites vigentes.

### 4.3 Nota de decisión ADR-001: interfaz con Jinja2 en lugar de React

- **Contexto:** 9 horas semanales, 32 semanas y un punto de partida con poca experiencia. React no aparece en el listado de tecnologías del diseño curricular (sí aparecen Python, JavaScript, Bootstrap, SQL y servicios web REST) y exige aprender un ecosistema adicional.
- **Decisión:** las pantallas las sirve el mismo FastAPI con plantillas Jinja2 y Bootstrap.
- **Consecuencias:** menos herramientas que dominar y más tiempo para requisitos, diseño, pruebas y despliegue, que es lo que evalúa el programa. La API REST se mantiene documentada, así que cambiar el frontend por React después del grado es posible.

## 5. El repositorio

Se usa la estructura GFPI-F-135 V04 tal cual, con nombres sin tildes ni espacios. Las carpetas `Gestion_Proyecto`, `Decisiones` y `.github/workflows` son adiciones aprobadas por el instructor.

```txt
Eien_System/
├── .github/
│   └── workflows/
├── 00_BPM/
├── 01_Documentacion/
│   ├── Instrumentos_recoleccion/
│   ├── Requisitos/
│   │   ├── Funcionales/
│   │   └── No_funcionales/
│   ├── Arquitectura_Diseno_Tecnico/
│   │   └── Decisiones/
│   ├── Manuales/
│   ├── Legal_Contratos/
│   └── Gestion_Proyecto/
├── 02_Diseno_UI_UX/
│   ├── Mapas_navegacion/
│   ├── Wireframes_Flujos/
│   └── Mockups_Prototipos/
├── 03_Desarrollo/
│   ├── Codigo_Fuente/
│   │   └── backend/
│   │       └── test_uploads/
│   └── Scripts_BD/
├── 04_Pruebas_QA/
│   ├── Plan_Pruebas/
│   ├── Casos_Prueba/
│   └── Resultados/
├── 05_Despliegue_Infraestructura/
│   ├── Builds_Entregables/
│   └── Configuracion_Entornos/
├── 06_Recursos_Varios/
│   └── Presentaciones_capacitacion/
├── .gitignore
└── README.md
```

Qué fase llena cada carpeta: 00\_BPM y Instrumentos\_recoleccion, fase 1; Requisitos, fase 2; Arquitectura\_Diseno\_Tecnico, fases 3, 4 y 5; Legal\_Contratos, fases 3 y 8; 02\_Diseno\_UI\_UX, fase 5; 03\_Desarrollo, fase 6; 04\_Pruebas\_QA, fase 7 (los casos de prueba nacen desde la fase 2); 05\_Despliegue\_Infraestructura y Manuales, fase 8; 06\_Recursos\_Varios, fase 9; Gestion\_Proyecto, todo el proyecto.

Reglas del repositorio:

- Cada carpeta vacía lleva un archivo `.gitkeep`, porque Git no guarda carpetas vacías.
- El `.gitignore` parte de las plantillas Python, VisualStudioCode y Windows, y agrega `*.log` y `test_uploads/`. El programa crea `test_uploads/` si no existe.
- **El repositorio es público:** nunca se suben claves, contraseñas ni archivos `.env`, y las entrevistas se guardan anonimizadas (sin nombres ni correos). Los datos de prueba son ficticios.
- El README explica qué es el proyecto, cómo ejecutarlo y cuál es su estado actual.

## 6. Cómo se gestiona un proyecto real siendo una sola persona

Un equipo real reparte roles; aquí se usan «sombreros» y se declara cuál se lleva puesto cada día: dueño del producto (decide qué y en qué orden), desarrollador, QA (prueba con la mentalidad de quien quiere romper lo construido) y líder de proyecto (mide avance y riesgos).

- **Scrum para uno.** Sprints de 2 semanas. Planificación de 30 minutos al inicio, registro diario de 5 minutos (qué hice, qué haré, qué me bloquea), revisión al final (idealmente demostrando a otra persona) y retrospectiva de 20 minutos.
- **Trello.** Tablero con las listas Backlog, Listo para sprint, En curso, En revisión y Hecho. Etiquetas por prioridad MoSCoW (Debe, Debería, Podría) y por fase. Cada tarjeta lleva el ID del requisito (RF-XX), una lista de verificación con la definición de terminado, la estimación en puntos en el título y una fecha límite. El registro diario se escribe como comentario en la tarjeta en curso.
- **Git y GitHub.** Ramas `main` (siempre estable y desplegable), `develop` (integración) y `feature/RF-XX-descripcion` (una por historia). Todo cambio entra a `develop` mediante Pull Request, aunque se trabaje solo, con una plantilla que responda qué cambia, por qué y cómo se probó. La rama `main` se protege para exigir que la integración continua esté en verde.
- **Conventional Commits.** Mensajes con prefijo (`feat:`, `fix:`, `docs:`, `test:`, `chore:`) y commits pequeños.
- **Versionado semántico y CHANGELOG.** Versiones etiquetadas (v0.1.0, v0.2.0 … v1.0.0) y un archivo `CHANGELOG.md` que resume cada versión.
- **Registro de decisiones (ADR).** Una nota corta por cada decisión técnica importante en `Arquitectura_Diseno_Tecnico/Decisiones`, con contexto, decisión, alternativas y consecuencias.
- **Trazabilidad.** Cada requisito tiene un ID y se rastrea: RF-XX → caso de uso → diseño → código → caso de prueba, en una tabla dentro de `Gestion_Proyecto`. Si un requisito no tiene prueba, no está terminado.
- **Control de cambios.** Cualquier cambio al SRS sube la versión y deja constancia de qué cambió y por qué.
- **Proceso personal.** Se registra con Clockify o Toggl cuánto tarda cada tarea y cuántos defectos aparecen. Así las estimaciones mejoran, y el diseño curricular lo pide.
- **Definición de terminado (DoD).** Código en `develop` mediante Pull Request con la integración continua en verde, pruebas escritas y pasando, endpoint documentado, funcionamiento en el entorno de pruebas, demostración hecha y tarjeta en Hecho.
- **Bitácora de lecciones aprendidas y registro de riesgos,** actualizados al final de cada sprint.

- **Bitácora de cierre de fase (obligatoria).** Cada fase termina con un registro en `01_Documentacion/Gestion_Proyecto/Bitacora_Fases.md`, con esta forma, y la fase no se da por cerrada hasta que exista:

```markdown
## Fase X · Nombre (fecha de cierre)
- Puerta de calidad: cumplida o no, con la evidencia.
- Entregables y dónde están en el repositorio.
- Horas planeadas frente a horas reales.
- Decisiones tomadas (ADR).
- Lo aprendido y lo que me trabó.
- Pendientes y riesgos.
- Siguiente fase: primer paso.
```

La bitácora es también la memoria del proyecto: al retomar el trabajo en una conversación nueva con un asistente de IA, basta compartir este roadmap y la bitácora.

## 7. Herramientas del proyecto

- **Trello:** tablero y registro diario (desde la fase 0).
- **GitHub** (repositorio, Issues, Pull Requests, Actions y Dependabot): control de versiones, revisión y automatización (desde la fase 0).
- **Clockify o Toggl:** proceso personal (desde la fase 0).
- **VS Code:** editor, con las extensiones de Python, Docker y Git.
- **bpmn.io, draw.io y PlantUML o Mermaid:** procesos BPMN y diagramas UML (fases 1, 4 y 5). Mermaid se visualiza directamente en GitHub.
- **Figma:** mockups y prototipo clicable (fase 5).
- **Docker Desktop:** contenedores en local (fase 6).
- **Postman o Thunder Client:** probar la API (fases 6 y 7).
- **Ruff, Black y pre-commit:** formato y revisión automática antes de cada commit (desde el sprint 2, si el ritmo lo permite).
- **pytest y pytest-cov:** pruebas y cobertura (fases 6 y 7).
- **Locust:** pruebas de carga (fase 7).
- **Lista OWASP Top 10:** seguridad básica; OWASP ZAP y SonarCloud como opcionales (fase 7).
- **Jira (solo conocer):** es la herramienta más usada en las empresas y comparte conceptos con Trello (backlog, sprint, historia de usuario, épica). No se usa en el proyecto.

**Regla para sumar herramientas:** una herramienta nueva entra solo si se usa cada semana o reemplaza algo que ya existe, porque con 9 horas semanales configurar cuesta tanto como aprender.

## 8. Las fases en detalle

### Fase 0. Fundamentos y entorno (2 semanas)

**Objetivo:** tener las herramientas listas y los conceptos mínimos para empezar sin pánico.

**Qué aprender:** terminal básica, Git y GitHub (commit, ramas, merge y Pull Requests), Trello y Clockify, Python (variables, condicionales, ciclos, funciones, listas y diccionarios) y SQL básico con PostgreSQL (crear tablas, INSERT, SELECT y JOIN).

**Qué producir:** repositorio con la estructura GFPI y README; tablero de Trello con las 10 fases como épicas; un programa de práctica en Python que registre paquetes en un archivo CSV; una base de datos local con 3 tablas relacionadas y consultas con JOIN.

**Puerta de calidad:** al menos 10 commits en 5 días distintos; el programa corre sin errores; las consultas JOIN devuelven resultados correctos; el tablero tiene fechas tentativas para cada puerta.

### Fase 1. Idea y levantamiento de información (2 semanas)

**Objetivo:** entender cómo funciona el negocio de Kizuna Logística antes de pensar en software.

**Qué aprender:** BPMN (proceso, actor, tarea, evento y compuerta), técnicas de elicitación (entrevista, encuesta, observación y revisión de documentos), qué es un stakeholder y qué es la frontera del sistema.

**Qué producir:** en `00_BPM`, procesos AS-IS (cómo se hace hoy) y TO-BE (cómo se hará con Eien-System) del registro de paquete, la entrega con evidencia y, si alcanza, la asignación a conductor. En `Instrumentos_recoleccion`, guía de entrevista, encuesta corta, hoja de observación y respuestas anonimizadas. Diagrama de contexto, lista de stakeholders y glosario.

**Consejo de realismo:** Kizuna es ficticia, pero las entrevistas pueden ser reales. Conviene hablar con un mensajero, un despachador o alguien de una empresa de envíos. Un solo dato real vale más que diez inventados.

**Puerta de calidad:** al menos 3 entrevistas documentadas; al menos 2 procesos modelados en AS-IS y TO-BE y revisados por una persona real; una lista de 20 o más necesidades en bruto, clasificadas.

### Fase 2. Especificación de requisitos IEEE 830, rehecha desde cero (3 semanas)

**Objetivo:** producir un SRS que otra persona pueda usar para construir y probar el sistema sin preguntar nada.

**Pasos:** definir la estructura IEEE 830 (introducción, descripción general, requisitos específicos y apéndices); redactar la introducción y la descripción general por roles (evaluador, desarrollador, interesado); transformar lo levantado en la fase 1 en requisitos funcionales (RF-001…) y no funcionales (RNF-001…); priorizar con MoSCoW; revisar con una persona ajena y congelar la línea base v1.0.

**Ficha mínima de cada requisito:** ID, nombre, descripción redactada como «El sistema debe…», actor, precondiciones, resultado esperado, criterio de aceptación verificable (dado, cuando, entonces), prioridad, fuente real (qué entrevista y qué fecha) y estado. Un buen requisito es atómico, verificable, sin palabras vagas como «rápido» o «amigable», numerado, priorizado y trazable. Meta de volumen: de 12 a 15 funcionales y de 6 a 8 no funcionales.

**Lecciones del SRS anterior:** unificar el control de versiones y mantener un historial; que el índice coincida con las páginas; no dejar marcadores genéricos; especificar todos los pilares que se prometen; escribir requisitos no funcionales medibles (por ejemplo, «se despliega completo con un solo comando» en lugar de «0 % de código dependiente del servidor», y «registro solo de inserción, sin permisos de modificar ni borrar» en lugar de «inalterable»); verificar que una disponibilidad de 99,7 % (unas 26 horas de caída al año) sea viable con el hosting y el presupuesto; citar fuentes concretas; y no incluir datos personales de terceros.

**Nota de contexto:** IEEE 830-1998 fue reemplazado por ISO/IEC/IEEE 29148. El SENA y este proyecto usan 830; se toman de la 29148 sus criterios de calidad de requisitos y su idea de trazabilidad.

**Puerta de calidad:** SRS v1.0 con todos los requisitos fichados; 100 % con criterio de aceptación y prioridad; MVP definido; revisión externa documentada.

### Fase 3. Propuesta técnica y planeación (2 semanas)

**Objetivo:** decidir cómo, con qué y en cuánto tiempo se va a construir.

**Qué producir:** propuesta técnica (alcance, arquitectura candidata, tecnologías, licencias, cronograma, horas, costos de infraestructura y riesgos); análisis comparativo de 2 o 3 opciones de hosting con criterios claros; ADR-001 confirmada; backlog inicial en Trello con cada requisito del MVP convertido en historias de usuario estimadas en puntos; plan de releases por sprint; registro de riesgos; y en `Legal_Contratos`, la política de tratamiento de datos (Ley 1581 de 2012) y la licencia del código.

**Puerta de calidad:** propuesta v1.0 aprobada por el instructor; 100 % de los requisitos «Debe» convertidos en historias estimadas; stack, hosting y alternativas documentados.

### Fase 4. Análisis y modelado (2 semanas)

**Objetivo:** traducir los requisitos a modelos que muestren qué hace el sistema.

**Qué aprender:** lógica y algoritmos, UML (casos de uso y actividades), modelo de dominio y modelo entidad-relación.

**Qué producir** (en `Arquitectura_Diseno_Tecnico/Analisis`): diagrama de casos de uso y plantillas extendidas de cada caso del MVP; diagramas de actividades de los flujos críticos (registro y entrega de un paquete); modelo de dominio y modelo entidad-relación conceptual; pseudocódigo de la asignación; informe de análisis.

**Puerta de calidad:** 100 % de los requisitos «Debe» cubiertos por al menos un caso de uso; matriz de trazabilidad sin vacíos; modelo entidad-relación normalizado hasta la tercera forma normal; informe revisado.

### Fase 5. Diseño técnico y UI/UX (3 semanas)

**Objetivo:** decidir exactamente cómo se construirá cada parte antes de programarla.

**Qué aprender:** diseño orientado a objetos, arquitectura cliente-servidor en capas y REST, normalización y diseño de bases de datos, y principios de usabilidad.

**Qué producir:** arquitectura en capas con API REST y diagramas de clases, componentes y despliegue; modelo de datos conceptual y lógico, script SQL de creación en `Scripts_BD`, diccionario de datos y política de seguridad de datos; contrato de la API (endpoints del MVP con entradas, salidas y códigos de error); y en `02_Diseno_UI_UX`, mapa de navegación por rol, wireframes, mockups en Figma con la paleta del SRS (fondo #F9F9F9, texto #333333, acento #BC002D) y un prototipo clicable.

**Puerta de calidad:** el script SQL crea todas las tablas sin errores en una base limpia; todos los endpoints del MVP documentados; todas las pantallas del MVP con mockup; una persona externa completa un flujo en el prototipo sin ayuda; lista de chequeo del diseño cumplida en un 90 % o más.

### Fase 6. Construcción (11 semanas)

**Objetivo:** programar por rebanadas verticales: cada sprint entrega algo que funciona de punta a punta (base de datos, API y pantalla).

**Sprints:**

- **Sprint 1. Esqueleto andante:** endpoint de salud, plantilla base con Bootstrap, PostgreSQL en contenedor, `docker compose up`, integración continua que ejecuta una prueba y primer despliegue público.
- **Sprint 2. Acceso y seguridad:** base de datos con migraciones, registro e inicio de sesión (bcrypt y JWT), roles y permisos y registro de auditoría base.
- **Sprint 3. Guías, conductores y vehículos:** crear, editar y consultar guías con las validaciones del SRS; gestión de conductores y vehículos con capacidad y disponibilidad.
- **Sprint 4. Asignación y módulo del conductor:** asignación manual y hoja de ruta; vista responsive para celular con cambio de estados e historial auditable.
- **Sprint 5. Evidencia y seguimiento:** firma en pantalla o foto almacenada de forma segura y asociada al paquete; seguimiento público por código; pulido de la interfaz y revisión de seguridad.
- **Semana de estabilización:** corregir defectos, completar pruebas y documentación de la API.

**Punto de control:** al final del sprint 2 se compara la velocidad real (proceso personal) con la planeada y se recorta el alcance de los sprints 3 a 5 si hace falta. Los requisitos «Debería» solo entran si sobra tiempo.

**Qué aprender, justo a tiempo:** HTML, CSS y JavaScript básicos, Python orientado a objetos, SQLAlchemy y Alembic, FastAPI y Pydantic, autenticación con JWT, Jinja2 y Bootstrap, Docker, pytest y PEP 8 con formateador automático.

**Reglas de calidad:** pruebas escritas junto con cada módulo, ningún secreto en el repositorio (variables de entorno), consultas siempre parametrizadas, Pull Request con integración continua en verde y cada sprint termina con una demostración y una versión etiquetada.

**Puerta de calidad:** 100 % de los requisitos «Debe» implementados y demostrados; cero defectos críticos abiertos; el sistema corre en el entorno de pruebas desplegado.

### Fase 7. Pruebas y calidad (2 semanas formales, más pruebas continuas)

**Objetivo:** demostrar con evidencia que el sistema cumple lo que prometió el SRS.

**Qué producir en `04_Pruebas_QA`:** plan de pruebas (alcance, ambiente, criterios de entrada y salida, riesgos); casos de prueba derivados de los criterios de aceptación y enlazados en la matriz de trazabilidad; ejecución de pruebas unitarias (pytest), de integración (API), funcionales y de aceptación con al menos 3 personas reales, de carga (Locust, contra la meta del SRS ajustada a lo que permita el hosting) y de seguridad básica (OWASP Top 10: inyección, autenticación y control de acceso); informe de ejecución, registro de defectos y su cierre, informe de evaluación de la calidad y lecciones aprendidas.

**Puerta de calidad:** 100 % de los casos «Debe» ejecutados y 95 % o más aprobados; cero defectos críticos o altos abiertos; cobertura de la lógica de negocio de 70 % o más; metas de rendimiento del SRS verificadas con datos; informe validado por el instructor.

### Fase 8. Despliegue e implantación (2 semanas)

**Objetivo:** que el sistema funcione en internet de forma repetible, segura y con respaldo.

**Qué producir:** plan de implantación (plataforma, requisitos mínimos, carga inicial de datos, respaldo e instalación); contenedores Docker para el backend y la base de datos, con entornos de desarrollo, pruebas y producción configurados en `05_Despliegue_Infraestructura` y secretos fuera del código; despliegue en el proveedor elegido en la fase 3, con HTTPS, usuarios y roles iniciales y copias de seguridad automáticas con una restauración probada de verdad; canal de integración y entrega continua (cada cambio en `main` ejecuta pruebas, construye y despliega); monitoreo básico con endpoint de salud y registros accesibles; manuales de usuario por rol, técnico y de instalación en `Manuales`; presentación de capacitación en `06_Recursos_Varios`.

**Puerta de calidad:** dirección pública con HTTPS funcionando; el sistema se levanta desde cero en una máquina limpia siguiendo solo el manual de instalación; restauración de copia probada; manuales revisados por alguien que no los escribió.

### Fase 9. Cierre y sustentación (1 semana)

**Qué producir:** versión v1.0.0 etiquetada con CHANGELOG y README final (qué hace, cómo se instala y capturas); informe final que consolida SRS, análisis, diseño, pruebas y manuales; guion de demostración y video de 3 a 5 minutos; presentación de sustentación ensayada al menos dos veces con público real; retrospectiva final, backlog posterior al grado y último registro de cierre en la bitácora.

**Puerta de calidad:** release publicada; capacidad de explicar cada parte del código y cada decisión de diseño; informe aprobado.

## 9. Cómo medir el avance

Pesos por fase para un porcentaje global: fase 0, 5 %; fase 1, 5 %; fase 2, 8 %; fase 3, 6 %; fase 4, 10 %; fase 5, 12 %; fase 6, 35 %; fase 7, 8 %; fase 8, 8 %; fase 9, 3 %. El avance global es la suma de cada peso por el porcentaje de avance de su fase, y una fase solo cuenta 100 % cuando cumple su puerta y tiene su registro de cierre en la bitácora.

Indicadores semanales: requisitos «Debe» implementados sobre el total; casos de prueba aprobados sobre ejecutados; historias cerradas por sprint; horas reales frente a horas planeadas (Clockify); defectos abiertos por gravedad.

Semáforo: verde si se va conforme al plan; amarillo si el desvío es de hasta una semana (se ajusta el siguiente sprint); rojo si supera dos semanas (se recorta alcance y se habla con el instructor).

## 10. Riesgos principales

- **Querer abarcar demasiado.** Mitigación: MVP escrito y priorización MoSCoW.
- **Quedarse bloqueado con una herramienta.** Mitigación: máximo 2 días intentando solo; después se pide ayuda al instructor o a la comunidad.
- **Perder el ritmo o tener menos horas** por otros compromisos o cansancio. Mitigación: bloques fijos en el calendario, sprints cortos, demostraciones a otra persona y recalcular el calendario recortando alcance, nunca calidad.
- **Perder trabajo.** Mitigación: repositorio remoto y copias de respaldo de los documentos.
- **Despliegue tardío.** Mitigación: desplegar desde el sprint 1.
- **Datos personales y secretos expuestos** en un repositorio público. Mitigación: datos ficticios o anonimizados, `.env` ignorado y política de tratamiento de datos conforme a la Ley 1581 de 2012.
- **Dependencia de planes gratuitos que cambian.** Mitigación: Docker mantiene el sistema portable entre proveedores.

## 11. Uso de asistentes de IA

Se pueden usar para aprender y avanzar, con una regla: hay que poder explicar y modificar cada línea del proyecto en la sustentación. Si algo no se entiende, aún no está terminado. Para ser transparente, en el informe final se declara en qué partes del trabajo se usó apoyo de IA.

## 12. Empieza esta semana (21 a 29 de noviembre)

1. Crear el tablero de Trello con las 10 fases como épicas y fechas tentativas para cada puerta de calidad.
2. Crear la cuenta de Clockify o Toggl y registrar cada bloque de estudio.
3. Repasar terminal y Git (ramas, commits y merge) practicando en el mismo repositorio (unas 3 h).
4. Empezar con Python: variables, condicionales, ciclos y funciones (unas 4 h).
5. Fijar en el calendario los bloques semanales de estudio (un bloque largo y tres cortos) y crear el archivo Bitacora\_Fases.md en Gestion\_Proyecto con la plantilla de cierre de fase.
