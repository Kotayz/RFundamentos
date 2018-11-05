# Tipos de dados em R

# Criando Variáveis

var1 = 367
var1
mode(var1)
help("mode")
sqrt(var1)

var2 = as.integer(var1)
var2

#Verificar tipo da variável
mode(var2)

#Verificar tipo da variável
typeof(var2)

Pesquisar o que o comando faz
help("typeof")

# Criar vetor
var3 = c("seg", "ter", "que")
var3
mode(var3)

# Criar função
var4 = function(x) {
  x + 3
}
var4
mode(var4)

# Podemos também mudar o modo do dado
var5 = as.character(var1)
var5
mode(var5)

## Atribuindo valores a objetos

x <- c(4, 5, 6)
x
c(4, 5, 6) -> y
y
assign("x", c(1.3,4,-2))

## Verificando o valor em uma posição específica
x[1]

## Verificar objetos
ls()
objects()

## Remover objetos

rm(x)
x
