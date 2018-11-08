#a familia apply - um forma elegante de fazer loops

# apply() - arrays e matrizes
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versão amigável da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista
# mapply() - similar a sapply, multivariada
# by

#usando um loop
lista1 <- list(a = (1:10), b = (45:77))

#calculando o total de cada elemento da lista com loop for
valor_a = 0
valor_b = 0

for (i in lista1$a) {
  valor_a = valor_a + i
}
for (j in lista1$b) {
  valor_b = valor_b + j
}
print(valor_a)
print(valor_b)

#calculando cada elemento da lista com sapply
?sapply
sapply(lista1, sum)

#aplicando funções com sapply
sapply(lista1, mean)

#apply()
?apply()

x <- matrix(rnorm(9), nr = 3, byrow = T)
x

apply(x, 1, mean) #calcular a média pela linha '1'
apply(x, 2, mean) #calcular a média pela coluna '2'
apply(x, 1, plot)

resultapply <- apply(x, 1, mean)
resultapply

escola <- data.frame(
          Aluno = c('Alan', 'Aline', 'Alana', 'Aline', 'Alex', 'Ajay'),
          Matematica = c(90, 80, 85, 87, 56, 79),
          Geografia = c(100, 78, 86, 90, 98, 67),
          Quimica = c(76, 56, 89, 90, 100, 87))

escola
escola$Geografia

#calculando a média por aluno
escola$Media <- NA
escola

escola$Media <- apply(escola[, c(2, 3, 4)], 1, mean) #passa o dataframe com todas as linhas "[,]", com as colunas 2, 3, 4 "[2, 3, 4]" e agregação por linha "[1]"
escola

escola$Media = round(escola$Media)
escola

#tapply() vs sqldf
install.packages('sqldf')
require(sqldf)

escola2 <- data.frame(
            Aluno = c('Alan', 'Aline', 'Alana', 'Aline', 'Alex', 'Ajay'),
            Matematica = c(90, 80, 85, 87, 56, 79),
            Geografia = c(100, 78, 86, 90, 98, 67),
            Quimica = c(76, 56, 89, 90, 100, 87))
escola2

sqldf("select aluno, sum(matematica), sum(Geografia), sum(Quimica) from escola2 group by aluno")
tapply(c(escola2$Matematica), escola2$Aluno, sum)

#by
?by

sqldf("select aluno, sum(matematica), sum(Geografia), sum(Quimica) from escola2 group by semestre")
by(escola2[, c(2, 3, 4)], escola2$Semestre, colSums)

#lapply()
?lapply

lista1 <- list(a = (1:10), b = (45:77))
lista1
lapply(lista1, sum)
sapply(lista1, sum)

#vapply()
?vapply

vapply(lista1, fivenum, c(Min. = 0, "1st Qu." = 0, Median = 0, "3rs Qu." = 0, Max = 0))

#replicate
?replicate
replicate(7, runif(10))#replicada uma determinada operação um numero de vezes

#mapply()
?mapply
mapply(rep, 1:4, 4:1) # pode realizar a mesma operação para mais de um elemento

#rapply()
#similar ao lapply
?rapply

lista2 <- list(a = c(1:5), b = c(6:10))
lista2

rapply(lista2, sum)
rapply(lista2, sum, how = "list")
