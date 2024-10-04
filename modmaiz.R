library(forecast)
library(car)
library(corrplot)
library(dplyr)
library(ggplot2)
library(gridExtra)

#Datos
data <- read.csv("C:\\Users\\Maria\\Desktop\\24P\\Econometria\\DatosMaiz.csv", header = TRUE)
col <- colorRampPalette(c("#6A0D91", "#8A2C77", "#F5A9B8", "#F6C1C1","#FF007F"))
colv <- c("#6A0D91", "#8A2C77", "#F5A9B8", "#F6C1C1","#FF007F")
correlaciones <- cor(data[, c("Cosechada","Temperatura","Precipitación","Humedad","Valor.real", "TP")])
corrplot(correlaciones, method = "color", col = col(200), type="lower", tl.col="black", tl.srt=45, addCoef.col = "black")

#Gráfico
variables_explicativas <- c("Cosechada", "Temperatura", "Precipitación", "Humedad", "TP")
graficos <- lapply(variables_explicativas, function(var) {
  ggplot(data, aes_string(x = var, y = "Valor.real")) +
    geom_point(color = colv[which(variables_explicativas == var)]) +
    geom_smooth(method = "lm", se = FALSE, color = "#861d52") + 
    labs(x = var, y = "Valor real")+
    theme(axis.text.x = element_text(angle = 45, hjust = 1))
})

grid.arrange(grobs = graficos, ncol = 2)

#modelo 1
modelo <- lm(Valor.real ~ Cosechada + Temperatura + Precipitación + Humedad + TP , data = data)
summary(modelo)
anova(modelo)
#Q-Q Plot
residuos <- residuals(modelo)
qqnorm(residuos)
qqline(residuos, col = "#F50087")

#Aleatoriedad
ajustados <- fitted(modelo)
plot(ajustados, residuos, xlab = "Valores Ajustados", ylab = "Residuos", main = "Gráfico de Residuos vs. Valores Ajustados")
abline(h = 0, col = "#F50087")

#Al ser menos de 50 datos, usamos Shapiro-Wilks para observar la normalidad de los residuos
shapiro.test(residuos)
#Los resultados nos indican que no rechazamos la hipotesis nula, ie. los resiuduos tienen una distribucion normal

#Multicolinealidad
vif(modelo)
#La prueba indica baja multicolinealidad


#modelolinlin4
modelo4 <- lm(Valor.real ~ Cosechada + Temperatura + Precipitación + TP , data = data)
summary(modelo4)
anova(modelo4)
residuos <- residuals(modelo4)
qqnorm(residuos)
qqline(residuos, col = "#F50087")
ajustados <- fitted(modelo4)
plot(ajustados, residuos, xlab = "Valores Ajustados", ylab = "Residuos", main = "Gráfico de Residuos vs. Valores Ajustados")
abline(h = 0, col = "#F50087")
shapiro.test(residuos)
vif(modelo4)





