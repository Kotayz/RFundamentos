### Objetos em R

# Vetor: Possui 1 deminsão e 1 tipo de dado
vetor1 <- c(1:10) # '1:10 é o range'
vetor1
length(vetor1)
mode(vetor1) # Tipo de armazenamento
class(vetor1) # Qual é a classe
typeof(vetor1) # Qual é a classe

# Matriz: Possui 2 dimensões e 1 tipo de dado
matriz1 <- matrix(1:10, nrow = 2) # 'matrix()' Cria matriz, 'nrow' número de linhas
matriz1
length(matriz1)
mode(matriz1)
class(matriz1)
typeof(matriz1)

# Array: possui 2 ou mais dimensões e 1 tipo de dado
array1 <- array(1:5, dim=c(3, 3, 3)) # criar array, dim - dimensão(linha, coluna, dimensão)
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)

# Dataframes: Dados de diferentes tipos
# Maneira mais fácil de explicar data frames: é uma matriz com diferentes tipos de dados
View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)

# Listas: Coleção de diferentes objetos
# Diferentes tipos de dados são possíveis e comuns
lista1 <- list(a = matriz1, b = vetor1) # Criar lista
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)


# Funções também são vistas como objetos em R
func1 <- function(x) {
  var1 <- x * x
  return(var1)
}

func1(5)
class(func1)

# Removendo objetos
objects()
rm(array1, func1)
objects()