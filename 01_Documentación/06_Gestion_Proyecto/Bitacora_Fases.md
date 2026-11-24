# Bitácora de cierre de fase

## Planificación fases

| **Fase** | **Título** | **Fecha inicio planificada** AAAA-MM-DD | **Fecha fin planificada** AAAA-MM-DD | **Finalizada** |
| :---: | :---: | :---: | :---: | :---: |
| **0** | Fundamentos y entorno | 2026-11-21 | 2026-12-06 | ✅ |
| **1** | Idea y levantamiento de información | 2026-12-07 | 2026-12-20 | ❌ |
| **2** | Especificación de requisitos IEEE 830 | 2026-12-21 | 2027-01-10 | ❌ |
| **3** | Propuesta técnica y planeación | 2027-01-11 | 2027-01-24 | ❌ |
| **4** | Análisis y modelado | 2027-01-25 | 2027-02-07 | ❌ |
| **5** | Diseño técnico y UI/UX | 2027-02-08 | 2027-02-28 | ❌ |
| **6** | Construcción | 2027-03-01 | 2027-05-16 | ❌ |
| **7** | Pruebas y calidad | 2027-05-17 | 2027-05-30 | ❌ |
| **8** | Despliegue e implantación | 2027-05-31 | 2027-06-13 | ❌ |
| **9** | Cierre y sustentación | 2027-06-14 | 2027-06-20 | ❌ |
| **Colcón** | Colchón para imprevistos | 2027-06-21 | 2027-06-27 | ❌ |

## Fase 0 · Fundamentos y entorno (cierre real: 2026-11-24)

**Periodo real:** 2026-11-21 a 2026-11-23

### Puerta de calidad

- [ ] Al menos 10 commits en 5 días distintos: 31 commits en 3 días (`git log`).
- [x] Programa de paquetes sin errores: [Evidencia](https://github.com/Ze-ni-tsu/Proyecto-Eien-System/blob/main/03_Desarrollo/01_C%C3%B3digo_Fuente/practicas_fase0/ej06_paquetes_csv.py); registró y conservó los datos al reabrirlo.
- [x] JOIN correctos: [Evidencia](https://github.com/Ze-ni-tsu/Proyecto-Eien-System/blob/main/03_Desarrollo/02_Scripts_BD/practica_fase0.sql/practice.sql); devuelve 5 filas.
- [x] Tablero de Trello con fechas por fase.

**Veredicto:** Parcial. Hizo falta dos días de commits adicionales.

### Entregables

- Repositorio con estructura GFPI y README.
- Práctica de Python en [practicas_fase0](https://github.com/Ze-ni-tsu/Proyecto-Eien-System/tree/main/03_Desarrollo/01_C%C3%B3digo_Fuente/practicas_fase0).
- Script SQL en [Scripts_BD](https://github.com/Ze-ni-tsu/Proyecto-Eien-System/tree/main/03_Desarrollo/02_Scripts_BD).
- Tablero de Trello y registro en Clockify.

### Horas

| Tarea | Plan (h) | Real (h) |
| :---: | :---: | :---: |
| Trello y Clockify | 1,5 | 0,5 |
| Terminal y Git | 4 | 2,3 |
| Python básico | 8 | 2,4 |
| Programa CSV | 3 | 2 |
| SQL | 3 | 1,3 |
| Cierre | 0,5 | 0,5 |
| **Total** | **20** | **8,5** |

Mayor desviación: Programa CSV por se realizo commit del CSV antes de incluirlo en .gitignore.

### Decisiones

- Los archivos de datos de prueba no se versionan (`*.csv` en `.gitignore`).

### Lo aprendido y lo que me trabó

- Aprendí: el flujo rama, Pull Request, merge y usar archivos csv en Python.
- Me trabó: el CSV seguía rastreado aunque estaba en `.gitignore`.
- Lo resolví con: `git rm --cached` y corrigiendo el patrón a `*.csv`.

### Pendientes y riesgos

- Evaluar `UNIQUE` en `asignaciones` (se decide en la Fase 5).
- Riesgo: avanzar a un ritmo que no pueda sostener. Acción: mantener 9 h semanales.
