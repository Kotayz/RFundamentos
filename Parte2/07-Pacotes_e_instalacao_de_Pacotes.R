#pacotes e instalação de pacotes

# de onde vem as funções? pacotes (conjuntos de funções)
# quando você inicia o RStudio, alguns pacotes são carregador por padrão

#listar os pacotes instalados
search()

install.packages(c("ggvis", "tm", "dplyr"))
library(ggvis)
library(tm)

#carregar pacote a partir de uma função
require(dplyr)

search()
?require
detach(package:dplyr)

#anexar um dataset no ambiente de trabalho
?attach

#listar funções de um pacote
ls(pos = "package":tm)

#listar todas as funções disponíveis dentro de pacote
ls(getNamespace(("tm"), all.names = TRUE))

#listar todos as funções e parametros esperadas dentro do pacote
lsf.str("package:tm")
lsf.str("package:ggplot2")
library(ggplot2)
lsf.str("package:ggplot2")

# R possui um conjunto de dataset preinstalados. Verificar

library(MASS)
data()

?lynx #consulta de um dataset
head(lynx)
head(iris)
tail(lynx)
summary(lynx)

plot(lynx)
hist(lynx)
head(iris)
iris$Sepal.Length
sum(Sepal.Length)

attach(iris)
sum(Sepal.Length)