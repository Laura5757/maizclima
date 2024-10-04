# README English
**Note** all the files are in Spanish.

This repository contains raw and processed data for the econometric project titled "Effect of atmospheric temperature, relative humidity, and precipitation on the real production value of white maize grain in Sinaloa during the autumn/winter agricultural cycle from 2003 to 2023." The project aims to understand the effect of climatic factors on the real production value of white maize during the autumn/winter agricultural cycle, which spans from October to March.

- The file humidity.nc contains relative humidity data for Sinaloa from 1993 to 2023, obtained from the ERA5 dataset: monthly averaged data on pressure levels from 1940 to present.
- The file HR_P.txt contains the monthly average of relative humidity, extracted from the .nc file.
- The file HR.ipynb contains the code used to process the humidity.nc file.
- The file TC.csv contains the monthly dollar-peso exchange rate from January 1991 to September 2024, obtained from the Bank of Mexico.
- The file DatosModMaiz.xlsx contains the following:
  - rainfall and temperature data, both raw and processed, obtained from the CONAGUA website,
  - relative humidity and the exchange rate, as described above,
  - the INPC (National Consumer Price Index), obtained from the Bank of Mexico,
  - production value extracted from the SIACON (Agro-Food Information System for Consultation) software, and
  - the real production value obtained using the INPC.
  - This data is already organized by agricultural cycle.
- The file DatosMaiz.csv contains the following data:
  - Año - refers to the agricultural cycle of the respective year,
  - Cosechada - refers to the harvested area during the cycle (Ha),
  - Temperatura - refers to the average temperature during the cycle (°C),
  - Precipitación - refers to the average precipitation during the cycle (mm),
  - Humedad - refers to the average relative humidity during the cycle (%),
  - Valor real - refers to the real production value during the cycle (thousands of pesos),
  - TP - refers to the dollar-peso exchange rate during the cycle (pesos).
- The file ModeloMaíz.xlsx contains the previously mentioned data during the cycle and the variables modified with natural logarithms (ln) and squared.
  - It includes the following regressions:
  - Individual regression of each climatic component with the real production value: linlinRT, linlinRP, linlinRH,
  - linlin5 - using 5 variables, both explanatory and dependent are linear.
  - linlin4 - using 4 variables, both explanatory and dependent are linear.
  - linlin3 - using 3 variables, both explanatory and dependent are linear.
  - linlog3 - using 3 variables, the explanatory variables are transformed using ln, and the dependent variable is linear.
  - loglin3 - using 3 variables, the explanatory variables are linear, and the dependent variable is transformed using ln.
  - loglog3 - using 3 variables, both explanatory and dependent variables are transformed using ln.
  - It contains the ANOVA table to compare all the models performed.
- The file modmaiz.r contains the code for plotting the correlation between variables, scatter plots of each explanatory variable against the dependent variable, ANOVA, QQ-plot, residuals plot, Shapiro-Wilk normality test, and VIF for the linlin5 and linlin4 models (described above). 
