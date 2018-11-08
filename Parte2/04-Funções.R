#funções

#help

?sample
args(sample)
args(mean)
args(sd)

#funções built-in
abs(-43)
sum(c(1:5))
mean(c(1:5))
round(c(1.1:5.8))
rev(c(1:5)) # função para ordenação reversa
seq(1:5)
sort(rev(c(1:5)))
append(c(1:5), 6) #adiciona mais um elemento ao vetor

vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
vec2

#funções dentro de funções
plot(rnorm(10))
mean(c(abs(vec1), abs(vec2))) #mean - calcula a média | abs calcula o valor absoluto

#criando funções
myfunc <- function(x) { x + x}
myfunc(10)
class(myfunc)

myfunc2 <- function(a, b) {
  valor <- a ^ b # ^ potência
  print(valor)
}
myfunc2(3, 2)

jogando_dados <- function() {
  num <- sample(1:6, size = 1) #está em escopo local
  num
}

jogando_dados()

#escopo
print(num) #esse objeto só existe dentro da função jogando_dados()
num <- c(1:6) #criando em escopo global
num

#funções sem número definido de argumentos
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")
vec3 <- c(6.5, 9.2, 11.9, 5.1)

myfunc3 <- function(...) {
  df = data.frame(cbind(...))
  print(df)
}

myfunc3(vec1)
myfunc3(vec2, vec3)
myfunc3(vec1, vec2, vec3)

#funções built-in - não tente recriar a roda
#comparação de eficiência entre funçõa vetorizada e função "vetorizada build-in"

x <- 1:10000000

#função que calcula a raiz quadrada de cada elemento de um vetor de inteiros
meu_sqrt <- function(numeros) {
  resp <- numeric(length(numeros))
  for(i in seq_along(numeros)) {
    resp[i] <- sqrt(numeros[i])
  }
  return(resp)
}

system.time(x2a <- meu_sqrt(x))

system.time(x2b <- sqrt(x))

identical(x2a, x2b)
