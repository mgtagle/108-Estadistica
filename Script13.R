# Script 
# Clase 11.03.2020



# Importar datos ----------------------------------------------------------

Vivero <- read.csv("vivero.csv", header =T)


summary(Vivero)

boxplot(Vivero$IE ~ Vivero$Tratamiento, col="lightgreen",
        xlab = "Tratamientos", ylab= "IE")

# Prueba de t -------------------------------------------------------------
t.test(Vivero$IE ~ Vivero$Tratamiento, var.equal = T)

