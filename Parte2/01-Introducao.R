#revisão e apronfundamento

#interagindo com o sistema operacional

#lista todos os arquivos do diretórios
list.files()

#tipo da plataforma
.Platform$OS.type 

.Platform$file.sep
Sys.Date()
Sys.info()
R.version
?system

#listar arquivos do diretório
system('ls -a')

#criando um vetor
vec1 <- c(12, 3, 4, 19, 34)
vec1

#criando um matriz
dados <- c(1:50)
mat1 <- matrix(dados, nrow = 5, ncol = 5, byrow = T)
mat1

#criando listas
lst1 <- list(vec1, mat1)
lst1

#criando dataframes
charac_vec <- c("A", "B", "C")
num_vec <- c(4.5, 3.9, 7.2)
logic_vec <- c(TRUE, TRUE, FALSE)
df1 <- data.frame(charac_vec, num_vec, logic_vec)
df1

#comparando vetores e matrizes
vec1 > 10 # compara cada elemento do vetor
mat1 > 20 # compara cada elemento da matriz
mat1 == 2
mat1 == 2 | mat1 == 3
mat1 > 2 & mat1 < 4
!mat1 > 2 & mat1 < 4

for (i in length(vec1)) {
  if (vec1[i] > 10) {
    print('Pelo menos um elemento do vetor é maior que 10')
  } else {
    print('Todos os elementos do vetor são menores que 10')
  }
}

#operações com listas e matrizes
lst2 <-list(2, 3, 5, 7, 11, 13)
lst2

for (p in lst2) {
  print(p)
}

for (i in 1:length(lst2)) {
  print(lst2[[i]])
}

mat1
mat2 <- t(mat1) #@ t() para criar transposta (Linha vira coluna e coluna vira tinha)
mat2

for (i in mat1) {
  for (j in mat2) {
    total <- sum(mat2) + sum(mat1)
  } 
}
print(total)

#nomeando vetores, matrizes, listas e datagrames
names(vec1) <- c('Col1', 'Col2', 'Col3', 'Col4', 'Col5')
vec1

dimnames(mat1) = (list( c("Obs1", "Obs2", "Obs3", "Obs4", "Obs5")))
mat1

names(lst1) = c('Vetor', 'Matriz')
lst1

colnames(df1) <- c('Carcteres', 'Float', 'Inteiros')
rownames(df1) <- c('Obs1', 'Obs2', 'Obs3')
df1

#verificando o tipo
is.vector(vec1)
is.vector(mat1)

#convertendo o tipo. só altera a saída, a variável original não é alterada
as.vector(mat1)
as.list(mat1)
as.data.frame(mat1)
as.character(mat1)
mat1

df1
as.matrix(df1)
as.numeric(df1)

#valores na
mat2 <- matrix(1:90, 10)
mat2
mat2[sample(1:50, 10)] = NA # função sample criar uma amostra aleatória de dados
mat2

?is.na
na_lista <- is.na(mat2)
na_lista

#operações com objetos
vec1
sum(vec1) # somar os elementos do vetor
mat1
rowSums(mat1) #somar as linhas da matriz
colSums(mat1) #somar as colunas da matriz

cbind(vec1, mat1)
rbind(vec1, mat1)
mat1 * 3

#ranking e ordenamento
a <- c(100, 10, 1000)
a
order(a) # atribui um rank(número), para cada um dos números
a[order(a)]

#Slicing
vec1
vec1[2]
mat1
mat1[,2] #[linha, coluna]
mat1[1:3, 2:4] # grupo de linhas e grupo de colunas
lst1
lst1[[1]] #duplo [] para trazer somente o elemento desejado
lst1[[1]][4]
lst1$Matriz

#Dataframes
mtcars
head(mtcars)
tail(mtcars)
str(mtcars) # ver o resumo(summary), do dataframe
mtcars[, 5]
mtcars[1:4, 7:9]
mtcars[1:4, 'hp']
mtcars['hp']
mtcars$hp
subset(mtcars, subset = hp > 170)
library(dplyr)
slice(mtcars, 1:4)
order(mtcars)
order(mtcars$mpg)
