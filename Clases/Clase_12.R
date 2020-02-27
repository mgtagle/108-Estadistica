
# Importar datos de CedroRojo ---------------------------------------------

CR <- read.csv("CedroRojo.csv", header = T)


summary(CR)



# Una Muestra -------------------------------------------------------------

# Media teorética de la variable "Diametro"
# Establecida por CONAFOR para cedro rojo es igual a 13

#  Comparar la media observada de la variable diámetro para
#  las plántulas producidas en vivero (media=12.524, valores
#  observados).

# "mu" debe ser igual a la variable teorética
#  el valor de alfa establecido es 0.05

t.test(CR$diametro, mu=12.7)


t.test(CR$altura, mu = 19)


