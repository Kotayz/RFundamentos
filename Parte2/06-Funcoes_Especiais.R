#funções especiais

#unlist()
#Produz um vetor com os elementos da lista
?unlist

lst1 <-list(6, "b", 15)
lst1
class(lst1)

unlist(lst1)
vec1 <- unlist(lst1) # transforma uma lista em vetor
class(vec1)

lst2 <- list(v1 = 6, v2 = list(381, 2190), v3 = c(30, 217))
lst2
unlist(lst2)

mean(unlist(lst2))
round(mean(unlist(lst2)))

#do.call()
#executa uma função em um objeto
#***ATENÇÂO ***
#as funções da família apply aplicam uma função a cada elemento de um objeto (substitui um loop)
#a função do.call aplica uma função ao objeto inteiro e não a cada elemento individualmente
?do.call

data<-list()
N <- 100

for (n in 1:N) {
  data[[n]] = data.frame(index = n, char = sample(letters, 1), z = rnorm(1))
}

head(data)

#rbind pode unir vetores. baseado em alguma regra
do.call(rbind, data)
class(do.call(rbind, data))

#lapply() x do.call()
y <- list(1:3, 4:6, 7:9)
y

lapply(y, sum) # aplica a operação em todos os elementos da lista
do.call(sum, y) #aplica a operação ao objeto

#o resulta da função do.call pode ser obtido de outras
# pacote plyr

install.packages('plyr')
library(plyr)

Y <- list(1:3, 4:6, 7:9)
Y

ldply(y, sum)

#benchmark
#comparada o tempo de execução de dois métodos
install.packages('rbenchmark')
library(rbenchmark)

benchmark(do.call(sum, y), ldply(y, sum))

N <- list(as.numeric(1:30000), as.numeric(4:60000), as.numeric(7:90000))

benchmark(do.call(sum, N), ldply(N, sum))

#strsplit()
#divide uma string ou vetor de caracteres

texto <- "Esta é uma string"
strsplit(texto, " ")

texto <- "Esta é uma string"
strsplit(texto, "")

dates <- c("1999-05-23", "2001-12-30", "2004-12-17", "2018-11-11")
temp  <- strsplit(dates, "-")
temp
class(temp)

matrix(unlist(temp), ncol = 3, byrow = TRUE)

Names <- c("Brinm Sergey", "Page, Larry", "Dorsey, Jack", 
           "Glass, Noah", "Williams, Evan", "Stone, Biz")

Cofounded <- rep(c("Google", "Twitter"), c(2,4))
temp <- strsplit(Names, ", ")
temp

frase <- "Muitas vezes temos que repetir algo diversas vezes e essas diversas vezes parecem algo estranho"
palavras <- strsplit(frase, " ")[[1]]
palavras
unique(tolower(palavras)) #unique() para retirar repetições

antes = data.frame(attr = c(1, 30, 4, 6), tipo = c('pao_e_agua', 'pao_e_agua_2'))
antes
strsplit(as.character(antes$tipo), '_e_') #separa os valores e transforma em lista

library(stringr)
str_split_fixed(antes$tipo, "_e_", 2) #sepera os valores e transforma em matriz

antes = data.frame(attr = c(1, 30, 4, 6), tipo = c('pao_e_agua', 'pao_e_agua_2'))
antes
depois <- strsplit(as.character(antes$tipo), '_e_')
do.call(rbind, depois)

library(dplyr)
library(tidyr)

antes <- data.frame(
  attr < c(1, 30, 4, 6),
  tipo <- c('pao_e_agua', 'pao_e_agua_2')
)

antes %>%
  separate(tipo, c("pao", "agua"), "_e_")

#para encerrar

#operadores de atribuição

vec1 = 1:4
vec2 <- 1:4

class(vec1)
class(vec2)

typeof(vec1)
typeof(vec2)

# em funções, quando utilizado '=' o objeto tem escopo local
mean(x = 1:10)
x

# em funções, quando utilizado '<-' o objeto tem escopo global
mean(x <- 1:10)
x

#criação de objetos

vetor1 = 1:4
vetor2 = c(1:4)
vetor3 = c(1, 2, 3, 4)

class(vetor1)
class(vetor2)
class(vetor3)

typeof(vetor1)
typeof(vetor2)
typeof(vetor3)

matriz1 = matrix(1:4, nr = 2)
matriz2 = matrix(c(1:4), nr = 2)
matriz3 = matrix(c(1, 2, 3, 4), nr = 2)

class(matriz1)
class(matriz2)
class(matriz3)

typeof(matriz1)
typeof(matriz2)
typeof(matriz3)