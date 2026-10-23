#' LABORATORIO — Semana 9: Análisis Crítico de un Gráfico
#' Fundamentos de Programación para Análisis Económico · UdeC-EAN
#'
#' Integrantes: Nicole Jara - María José Salinas
#' Fecha: 15-10-2026
#'
#' Objetivo: analizar críticamente un gráfico real y proponer una mejora.

##' 
##' 1. El gráfico original
##' 

#' Fuente: Banco Central de Chile
#' Sitio: Base de Datos Estadísticos en Set de Gráficos
#' Gráfico: Mercado laboral -> Tasa de desempleo y empleo
#' Enlace: https://si3.bcentral.cl/setgraficos/#
#' Período observado: Enero de 2018 a Agosto de 2026
#'
#' Barras azules: empleo (miles de personas).
#' Línea roja: tasa de desempleo (porcentaje).
#
#' La imagen descargada está guardada en:
#' imagenes/grafico_original.png

##'
##' 2. Las cuatro preguntas
##' 

#' 1. ¿Cuál es el mensaje? ¿Se entiende en 5 segundos?
#' El gráfico muestra cómo a ido cambiando el empleo y la tasa de desempleo en 
#' Chile entre el periodo enero de 2018 y agosto de 2026. Las barras azules 
#' representan la cantidad de personas empleadas, en miles de personas, 
#' mientras que la línea roja representa la tasa de desempleo, en porcentaje.
#' En la página del Banco Central, el gráfico permite obtener valores exactos
#' al pasar el cursor sobre los datos., porque al pasar el mouse sobre las 
#' barras o la línea se pueden consultar las cifras de cada mes. Esto ayuda 
#' a conocer los valores exactos. Sin embargo es más dificil entenderlo cuando 
#' se descarga como imagen, esa función se pierde y solo se puede observar 
#' la evolución general de los indicadores, por lo que resulta más difícil 
#' conocer las cifras de cada período.


#' 2. ¿Los datos están bien representados?
#' El gráfico utiliza barras para mostrar el empleo y una línea para 
#' representar la tasa de desempleo. Esta combinación que usaron permite 
#' ver los dos indicadores en una misma figura. Además, cada uno tiene su 
#' propio eje vertical: el empleo se lee en el eje izquierdo, en miles 
#' de personas, y la tasa de desempleo en el eje derecho, en porcentaje.
#' El problema es que las dos escalas son diferentes. Por eso, no se debe
#' interpretar que una barra alta y una línea ubicada en cierto nivel 
#' tengan una relación directa por su altura. Para entender los valores 
#' correctamente, es necesario revisar el número y la unidad de cada eje.


#' 3. ¿Algo distorsiona o engaña?
#' Una dificultad que tiene el gráfico es que la imagen descargada no muestra 
#' las cifras de cada mes sobre las barras o la línea. Aunque en la página web 
#' se pueden ver en más detalle al pasar el mouse, esa posibilidad desaparece 
#' al guardar el gráfico como imagen. Esto hace que sea dificil revisar los  
#' valores exactos sin volver a la página original. Otro engaño es el uso de dos 
#' ejes verticales, ya que el empleo se mide en miles de personas y el desempleo 
#' en porcentaje, sus escalas no son comparables directamente. Esto no 
#' significa necesariamente que el gráfico esté mal hecho, pero puede confundir 
#' a quienes no se fijan en ambos ejes. También se debe considerar la cantidad 
#' de barras y meses representados. Como el período es largo, la figura puede 
#' resultar recargada y ser difícil de leer en una pantalla pequeña o en una 
#' imagen impresa.


#' 4. ¿Cómo lo mejorarías? (En una frase)
#' Mantendría la posibilidad de consultar los valores al pasar el mouse en la 
#' las barras o líneas, pero agregaría etiquetas con algunos datos importantes 
#' en la imagen descargada. También separaría el empleo y la tasa de desempleo 
#' en dos gráficos ubicados uno debajo del otro, utilizando el mismo período 
#' en el eje horizontal. Así sería más fácil observar la evolución de cada 
#' indicador sin confundir sus escalas.

##' 
##' 3. Diagnóstico con el checklist
##' 
#' Marcar lo que el gráfico cumple; comenta lo que falla.
#'
#'- [ ] El mensaje se entiende solo
#' El título indica qué variables se presentan, pero no explica qué 
#' resultado se puede observar. Además, algunos valores exactos no se ven en 
#' la imagen estática.
#'
#'- [x] Eje Y desde 0 en barras y áreas (en líneas no es obligatorio, pero el eje debe estar rotulado)
#'
#'- [ ] Rango temporal completo, o justificado (sin cherry-picking)
#' El gráfico muestra desde enero de 2018 hasta agosto de 2026, pero no se 
#' explica por qué se eligió ese período ni si permite comprender toda la 
#' evolución de los indicadores.
#'   
#'- [x] Tipo de gráfico adecuado al dato
#'
#'- [ ] Color con función y accesible (no rojo-verde como único contraste; pruébalo en [Coblis](https://www.color-blindness.com/coblis-color-blindness-simulator/))
#' El azul y el rojo permiten diferenciar las variables, pero se debe comprobar
#' si los colores se distinguen bien para personas con dificultades para 
#' percibirlos.
#'   
#'- [ ] No depende solo del color: forma, tipo de línea o etiqueta (codificación redundante)
#' La distinción entre empleo y desempleo depende principalmente de los colores
#' y de la leyenda. Se podrían agregar etiquetas directas para identificar 
#' cada variable.
#'   
#'- [ ] Etiquetas directas y líneas de referencia en vez de leyendas largas
#' El gráfico utiliza una leyenda para identificar las barras y la línea.
#' Se podrían agregar etiquetas junto a cada indicador para facilitar su 
#' identificación.
#'   
#'- [ ] Título = hallazgo (no solo el tema)
#' El título "Tasa de desempleo y empleo" indica los temas del gráfico, pero 
#' no destaca un resultado específico. Se podría utilizar un título que resuma 
#' un hallazgo, siempre que este se compruebe con los datos.
#'   
#'- [X] Sin chart junk (3D, fondos, grillas densas)
#'
#'- [X] Fuente y unidades citadas

##' 
##' 4. Clasificación de los problemas
##' 
#' Problema 1: Puede ser difícil interpretar los dos ejes porque utilizan 
#' unidades diferentes: miles de personas y porcentajes.
#' Familia: Percepción
#' Explicación: el lector podría confundir la relación visual entre las 
#' barras de empleo y la línea de desempleo.

#' Problema 2: La utilización de dos escalas puede llevar a comparar 
#' visualmente indicadores que tienen unidades diferentes.
#' Familia: Percepción
#' Explicación: Aunque cada indicador tiene su propio eje, la comparación 
#' visual puede resultar confusa. Esto no significa necesariamente que los 
#' datos sean incorrectos.

#' Problema 3: La cantidad de barras mensuales puede dificultar la lectura 
#' de la evolución durante todo el período.
#' Familia: Estética
#' Explicación: al mostrar muchos meses, el gráfico puede verse recargado y 
#' hacer más difícil distinguir algunos cambios.

##'
##'5. PROPUESTA DE MEJORA
##'
#' -Tipo de gráfico propuesto:Dos gráficos separados, uno para el empleo 
#' y otro para la tasa de desempleo. Ambos compartirían el mismo período 
#' para facilitar la comparación de su evolución.

#' -Qué resaltar: Empleo: azul #0072B2 y Tasa de desempleo: rojo anaranjado #D55E00
# -Paleta propuesta:Okabe-Ito, revisando que exista suficiente contraste entre los indicadores.

#' Qué quitar: Separar los indicadores para evitar confusiones entre sus 
#' escalas.Mantener las unidades claramente indicadas en cada eje. Destacar 
#' algunos valores importantes para facilitar la lectura. Y por último, 
#' evitar elementos decorativos que no aporten información.

#' Título propuesto: "Evolución del empleo y la tasa de desempleo en Chile, 
#' 2018-2026". Este título describe los indicadores y el período analizado, 
#' sin afirmar una conclusión que no se haya comprobado.

#' Bosquejo:
#' Panel superior: empleo en miles de personas.
#' Panel inferior: tasa de desempleo en porcentaje.
#' Ambos paneles deben compartir el eje temporal.
#'
#' Panel superior: empleo, medido en miles de personas.
#' Panel inferior: tasa de desempleo, medida en porcentaje.
#' Ambos gráficos deben compartir el eje temporal, desde enero de 2018 hasta 
#' agosto de 2026.
#' Importante: El bosquejo esta guardado como imagenes/grafico_original.png

##'
##' 6. USO DE CHATGPT
##' 

#' ¿Qué le preguntaron?
#' Solicitamos ayuda para analizar el gráfico del Banco Central de Chile 
#' sobre empleo y tasa de desempleo. Consultamos sobre si los colores eran 
#' adecuados y proponer una forma más clara de presentar los datos.

#' ¿Qué de su respuesta descartaron?
#' No afirmaremos que el gráfico presenta datos incorrectos o que fue diseñado 
#' para engañar, porque no tenemos evidencia de ello. Nos centraremos en las 
#' dificultades de interpretación que se pueden observar, como el uso de dos
#' escalas diferentes y la cantidad de barras mensuales.También evitamos
#' presentar una conclusión sobre el comportamiento del empleo o del desempleo 
#' sin comprobar los valores correspondientes.

