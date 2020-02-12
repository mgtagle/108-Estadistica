



# Normalidad --------------------------------------------------------------

head(conjunto)

# Aplicar prueba de Shapiro.test para la variable Altura

shapiro.test(conjunto$Altura)

ks.test(conjunto$Diametro, "pnorm", 
        mean=mean(conjunto$Diametro,
                  sd=sd(conjunto$Diametro)))

hist(conjunto$Diametro)
