#Listas

#Use list() para criar listas

#Lista de strings
lista_caracter = list('A', 'Bem-vindo', 'DSA')
lista_caracter

#Lista de números inteiros
lista_inteiros = list(2, 3, 4)
lista_inteiros

#Lista de floats
lista_numerico = list(1.90, 45.3, 300.5)
lista_numerico

#List de Números complexos
lista_complexos = list(5.2+3i, 2.4+8i)
lista_complexos

#Lista de valores lógicos
lista_logicos = list(TRUE, FALSE, FALSE)
lista_logicos

#Listas compostas
lista_composta1 = list("A", 3, TRUE)
lista_composta1

lista1 <- list(1:10, c("Maria", "João", "Alfredo"), rnorm(10))
lista1

?rnorm

#Slicing da Lista
lista1[1]
lista1[c(1, 2)]
lista1[2]
lista1[[2]][1]
lista1[[2]][1] = "Monica"
lista1

#Para nomear os elementos - Listas nomeadas
names(lista1) <- c("inteiros", "catacteres", "numéricos")
lista1

vec_num <-1:4
vec_char <- c("A", "B", "C", "D")

lista2 <-list(Numeros = vec_num, Letras = vec_char)
lista2

#Nomear os elementos diretamente
lista2 <-list(elemento1=3:5, elmento2 = c(7.2,3.5))
lista2

#trabalhando com elementos espec[íficos da lista]
names(lista1) <- c("inteiros", "catacteres", "numéricos")
lista1

lista1$catacteres
length(lista1$inteiros)
lista1$inteiros

#verificar o comprimento da lista
length(lista1)

#podemos extrair um elemento específico dentro de cada nível da lista
lista1$catacteres[2]

#mode dos elementos 
#verificar o tipo de armazenamento de um dos itens da lista
mode(lista1$numéricos)
mode(lista1$catacteres)

#combinando 2 listas
lista3 <- c(lista1, lista2)
lista3

#transformando um vetor em lista
v = c(1:3)
v

l = as.list(v)
l

#unindo 2 elementos em uma lista
mat = matrix(1:4, nrow = 2)
mat

vec = c(1:9)
vec

lst = list(mat, vec)
lst
