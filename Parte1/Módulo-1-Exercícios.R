# Exercício 1 -Crie um vetor com 12 números inteiros
vetor_integer <- c(1:12)
vetor_integer

# Exercício 2 -Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
matriz <- matrix(c(20:36), nrow = 4, ncol = 4)
matriz

# Exercício 3 -Crie uma lista unindo o vetor e matriz criados anteriormente
list <- list(vetor_integer, matriz)
list

# Exercício 4 -Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat
dtf <- data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))
dtf

# Exercício 5 -Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
names(dtf) <- c("config", "esfc", "chang")
dtf

# Exercício 6 -Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris, imprima um resumo do dataset.
iris
dim(iris)

# Exercício 7 -Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(iris$Sepal.Length, iris$Sepal.Width)

# Exercício 8 -Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
?subset
iris1 <- subset(iris, Sepal.Length > 7)
iris1

# Exercícios 9 (Desafio) -Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: você vai ter que instalar e carregar o pacote dplyr
# Dica 2: consulte o help para aprender como usar a função slice()
install.packages("dplyr")
library(dplyr)
?slice
iris2 <- slice(subset(iris), 1:15)
iris2

# Exercícios 10 -Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: use o RSiteSearch()para aprender como usar a função filter
RSiteSearch('filter')
iris3 <- filter(iris2, Sepal.Length > 6)
iris3
