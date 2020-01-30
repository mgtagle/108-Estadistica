# Marco Aurelio González Tagle
# Matricula: 123456789
# 29.01.2020


# Importar datos ----------------------------------------------------------

BD.ebanos <- read.csv("Clases/ebanos.csv", header = TRUE)
head(BD.ebanos)
summary(BD.ebanos)

mean(BD.ebanos$diametro)
mean(BD.ebanos$altura)

sd(BD.ebanos$diametro)
sd(BD.ebanos$altura)


boxplot(BD.ebanos$diametro, ylab="Diámetro (cm)",
        col="lightblue", main= "Diámetro de plántulas de Ebano")
boxplot(BD.ebanos$altura)

stem(BD.ebanos$diametro)
stem(BD.ebanos$altura)


hist(BD.ebanos$diametro, col="red",
     xlab="Diámetro (cm)", ylab= "Frecuencia",
     main="Histograma de Diámetro")


# Condicionantes ----------------------------------------------------------

# ¿Cuántos individuos tienen un Diam menor que la media?

sum(BD.ebanos$diametro < mean(BD.ebanos$diametro))
sum(BD.ebanos$diametro < 25.97)


# ¿Cuántos individuos tienen un Diam mayor que la media?

sum(BD.ebanos$diametro > mean(BD.ebanos$diametro))

sum(BD.ebanos$diametro > 30)


# ¿Existirá una observación igual a la media?

sum(BD.ebanos$diametro == mean(BD.ebanos$diametro))

# Subconjunto de datos subset

ebanos.30 <- subset(BD.ebanos, 
                    BD.ebanos$diametro > 30)
