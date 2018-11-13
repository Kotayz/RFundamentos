# Boxplots

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("/home/elson/Downloads/RFundamentos/Parte2")
getwd()

?boxplot
?sleep #dataset

# Permite utilizar as colunas sem especificar o mome do dataset
attach(sleep)#anexar o dataset ao ambiente de trabalho

# Construção do boxplot
sleepboxplot = boxplot(data = sleep, extra ~ group,
                       main = "Duração do Sono",
                       col.main = "red", ylab = "Horas", xlab = "Droga")

# Cálculo da média
means = by(extra, group, mean) #aplicar uma função a um conjunto de elementos

# Adiciona a média ao gráfico
points(means, col = "red")


# Boxplot horizontal
horizontalboxplot = boxplot(data = sleep, extra ~ group,
                            ylab = "", xlab = "", horizontal = T)

horizontalboxplot = boxplot(data = sleep, extra ~ group,
                            ylab = "", xlab = "", horizontal = T,
                            col = c("blue", "red") )
