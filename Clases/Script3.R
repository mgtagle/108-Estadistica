
library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")




# Normalidad --------------------------------------------------------------

head(conjunto)

# Aplicar prueba de Shapiro.test para la variable Altura

hist(conjunto$Altura)

shapiro.test(conjunto$Altura)

hist(conjunto$Diametro)
shapiro.test(conjunto$Diametro)


# Prueba Homogeneidad ----------------------------------------------------

var(conjunto$Diametro)
var(conjunto$Altura)



# Datos Ebanos ------------------------------------------------------------

ebano <- read.csv("Clases/ebanos.csv", header =T)

hist(ebano$diametro)
hist(ebano$altura)

boxplot(ebano$diametro)
fivenum(ebano$diametro)

# ¿Cuántos individuos tienen un Diam menor al 1er quartil?

sum(ebano$diametro <= 15.55)

# ¿Cuántos individuos tienen un Diam menor al 3er quartil?

sum(ebano$diametro <= 34.25)


# ¿Cuántos individuos tienen un Diam mayor al 1er quartil
# pero menor o igual a el 2do quartil?

sum(ebano$diametro >=15.55 & ebano$diametro  <= 25.90)

# ¿Cuántos individuos tienen un Diam mayor al 2do quartil
# pero menor o igual a el 3er quartil?


sum(ebano$diametro >=10 & ebano$diametro  <= 15.55)





ks.test(conjunto$Diametro, "pnorm", 
        mean=mean(conjunto$Diametro,
                  sd=sd(conjunto$Diametro)))




hist(conjunto$Diametro)
