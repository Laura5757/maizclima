# README español
**Nota:** todos los archivos están en español.

Este repositorio contiene los datos crudos y procesados para la realización del proyecto de caracter econométrico titulado Efecto de la temperatura atmosférica, humedad relativa y precipitación en el valor de la producción real del maíz grano blanco en Sinaloa durante ciclo agrícola otoño/invierno en el periodo 2003-2023. 
Dicho proyecto consiste en conocer el efecto de factores climáticos sobre el valor de la producción real del maíz blanco durante el cilo agrícola otoño/invierno el cual contempla los meses de Octubre a Marzo. 

- El archivo humidity.nc contiene la humedad relativa en Sinaloa desde el año 1993 al 2023. Obtenido del conjunto de datos  ERA5 monthly averaged data on pressure levels from 1940 to present.
- El archivo HR_P.txt contiene el promedio de la humedad relativa por mes extraído del archivo.nc.
- El archivo HR.ipynb contiene el código con el que fue procesado el archivo humidity.nc.
- El archivo TC.csv contiene el tipo de cambio mensual dolár peso desde Enero 1991 hasta Septiembre 2024. Obtenido del Banco de México.
- El archivo DatosModMaiz.xlsx contiene lo siguiente:
  - los datos de lluvia, temperatura, tanto crudos como procesados, ambos obtenidos a través de la página de CONAGUA, 
  - la humedad relativa y el tipo de cambio, descritos anteriormente, 
  - el INPC (Índice Nacional de Precios al Consumidor), obtenido del Banco de México, 
  - el valor de la producción extraído del software SIACON (Sistema de Información Agroalimentaria de Consulta) y 
  - el valor de la producción real obtenido utilizando el INPC. 
  - Estos datos ya se encuentran organizados por ciclo agrícola.
- El archivo DatosMaiz.csv contiene los datos: 
  - Año - se refiere al ciclo agrícola del respectivo año, 
  - Cosechada - se refiere a la superficie cosechada durante el ciclo (Ha),
  - Temperatura - se refiere a la temperatura promedio durante el ciclo (°C),
  - Precipitación - se refiere a la precipitación promedio durante el ciclo (mm),
  - Humedad - se refiere a la humedad relativa promedio durante el ciclo (%),
  - Valor real - se refiere al valor real de la producción durante el ciclo (miles de pesos),
  - TP - se refiere al tipo de cambio dolár peso durante el ciclo (pesos).
- El archivo ModeloMaíz.xlsx contiene los datos previamente mencionados durante el ciclo y las variables modificadas con logaritmo natural (ln) y al cuadrado. 
  - Se incluyen las siguientes regresiones:
  - regresión individual de cada componente climático con el valor real de la producción linlinRT, linlinRP, linlinRH, 
  - linlin5 - usando 5 variables, tanto las explicativas como la dependiente son lineales.
  - linlin4 - usando 4 variables, tanto las explicativas como la dependiente son lineales.  
  - linlin3 - usando 3 variables, tanto las explicativas como la dependiente son lineales.
  - linlog3 - usando 3 variables, las explicativas están transformadas con ln y la dependiente es lineal.
  - loglin3 - usando 3 variables, las explicativas son lineales y la dependiente está transformada bajo ln.
  - loglog3 - usando 3 variables, tanto las explicativas como la dependiente están transformadas bajo ln.
  - Contiene la tabla ANOVA para comparar todos los modelos realizados.
- El archivo modmaiz.r contiene el código para la graficación de la correlación de las variables, de gráficos de dispersión de cada variable explicativa contra la variable dependiente, anova, qq-plot, gráfico de resiudos, prueba de normalidad de Shapiro-Wilk y VIF para los modelos linlin5, linlin4 (anteriormente descritos). 


