#' ---
#' title: "Adherencia HM en el Centro de Simulación"
#' subtitle: "Inicio"
#' author: 
#'   - name: "Mario Camacho"
#'     affiliation: "Facultad de Medicina"
#'   - name: "Fernando Neria"
#'     affiliation: "Facultad de Medicina"
#' date: "2025-11-19"
#' date-modified: last-modified
#' output:
#'   html_document:
#'      toc-title: ""
#'      toc: true
#'      toc_depth: 2
#' ---

#' <button id="scroll-top" onclick="window.scrollTo({top: 0, behavior: 'smooth'});">
#'   ↑ Inicio
#' </button>

#' - [Inicio](index.html)
#' - [Ingesta de datos](scr/00_main.html)  
#' - [Resumen y gráficos descriptivos](scr/01_eda.html)  
#' - [Adherencia de la higiene de manos por curso](scr/02_prevalencia_por_curso.html)
#' - [Adherencia de la higiene de manos por escenario](scr/02_prevalencia_por_escenario.html)
#' 

#' # 🧾 Documentación:
#'
#' ## 🧩 Objetivos generales (para la UAI)
#' - Evaluar la adherencia a los 5 momentos de higiene de manos por parte de los estudiantes de medicina en el Centro de Simulación Clínica antes y después de una intervención multimodal.
#'
#' ## 🧩 Objetivos específicos (para la UAI)
#' - Determinar la adherencia a los 5 momentos de HM en tres momentos: pre, post-corto, post-largo
#' - Evaluar el porcentaje de cumplimiento de HM en función de los distintos escenarios simulados que realizan: consulta, box o procedimiento invasivo.
#' -  Determinar, en un escenario de box simulado, si la posición física de los dispensadores de productos de base alcohólica mejora la adherencia a los 5 momentos de higiene
#' 
#' ## 🧬 Unidad muestral
#' La unidad muestral es cada oportunidad de realizar **higiene de manos**.
#'
#' ## 📝 Recogida de datos
#' - Se observó cada vídeo y se creó un registro con cada oportunidad de HM.
#' - Detalles por video:
#'   - Puede haber uno o varios alumnos, pero **no se distingue individualmente**.
#'   - Todas las oportunidades se registran, aunque pertenezcan al mismo alumno.
#'
#' ## 🚿 Observación de la higiene de manos
#' Cada oportunidad se anotó si hubo higiene de manos:  
#' - Preferiblemente con **producto de base alcohólica (PBA)**. Realizar la higiene de manos con jabón también es válido.  
#' - Variable respuesta: `HM` ∈ `{HM, No HM}`
#'    - Realizar higiene de manos no depende del tipo de producto.  
#'    - La variable **guantes** implica que el alumno ha sustituido la higiene de manos por el uso de manos.  
#'    - La variable respuesta `HM` ha sido construida a partir de los dos puntos anteriores.
#'
#' ## 👥 Número de alumnos por escenario
#' | Escenario         | Número de alumnos |
#' |-------------------|-------------------|
#' | Consulta          | 1                 |
#' | Box               | varios            |
#' | Proceso invasivo  | 1                 |
#'
#' ## 💡 Notas adicionales
#' - Cada observación es **independiente** y representa una oportunidad de HM.  
#' - Las observaciones de cada vídeo pueden pertener a un alumno o varios, independientemente del número de alumnos en el escenario.
#'

#' # Set up
source('scr/zz_libraries.R')
options(error = NULL)  # Resetear manejo de errores

setwd("C:/Users/mario.camacho/OneDrive - UFV/Hospitales CAM")
setwd(file.path(getwd(), "Sureste/Bea Isidoro 202511/20251118 Adherencia Higiene Manos en Centro de Simulación Clínica"))

Sys.setenv(RSTUDIO_PANDOC = "C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools")

#' # ⚙️ Ejecución de scripts

# Hay que forzar que cada render se ejecute en un proceso separado.
# Como los chunks no tienen labels, se solapan los nombres de los chunks y tengo que ejecutarlo desde sistema

# Me lo lleva a la carpeta scr pero es la única manera de que me use el yaml
# invisible(system('"C:/Program Files/RStudio/resources/app/bin/quarto/bin/quarto.exe" render scr/00_main.R --to html --self-contained'))
# invisible(system('"C:/Program Files/RStudio/resources/app/bin/quarto/bin/quarto.exe" render scr/01_eda.R --to html --self-contained'))
# invisible(system('"C:/Program Files/RStudio/resources/app/bin/quarto/bin/quarto.exe" render scr/02_prevalencia_por_curso.R --to html --self-contained'))
# invisible(system('"C:/Program Files/RStudio/resources/app/bin/quarto/bin/quarto.exe" render scr/02_prevalencia_por_escenario.R --to html --self-contained'))
