###Strings

#string
texto<- "Isso é uma string!"
texto

x <- as.character(3.14)
x
class(x)

#concatenando strings
nome <- "Barack"; sobrenome = "Obama"
paste(nome, sobrenome)
cat(nome, sobrenome)

#Formatando a saída
sprintf("%s governa os EUA há %d anos", "Barack Obama", 8)

#extraindo parte da string
texto <- "Isso é uma string!"
substr(texto, start = 12, stop = 17)
?substr

#contanto o número de caracteres
nchar(texto)

#alterando a capitalização
tolower("histogramas e elementos de dados")
toupper("histogramas e elementos de dados")

#usando stringr
library(stringr) # carregar pacote para utiliza-lo

#dividindo uma string em caracteres
strsplit("histogramas e elementos de dados", NULL)
?strsplit

#dividindo uma string em caracteres, após o caracter espaço
strsplit("Histogramas e elementos de dados", " ")

#trabalhando com strings
string1 <- c("Esta é a primeira parte da minha string e será a primeira parte do meu vetor",
             "Aqui a minha string continua, mas será transformado no segundo vetor")
string1

string2 <- c("Precisamos testar outras strings - @???!$$", "Analise de Dados em R")
string2

#adicionando 2 strings
str_c(c(string1, string2), sep="")

#podemos contar quantas vezes um caracter aparece no texto
str_count(string2, "s")

#localiza a primeira e última posição em que o carcter aparece
str_locate_all(string2, "s")

#substitui a primeira ocorrência de um caracter
str_replace(string2, "\\s", "")

#substitui todas as ocorrências de um caracter
str_replace_all(string2, "\\s", "")

#detectando padrões nas strings
string1 <- "23 mai 2000"
string2 <- "1 mai 2000"
padrao <- "mai 20"
grepl(pattern = padrao, x = string1)
padrao <- "mai20"
grepl(pattern = padrao, x = string1)

#importando arquivo txt
#http://www.gutenberg.org/cache/epub/100/pg100.txt

arquivo <- read.csv("http://www.gutenberg.org/cache/epub/100/pg100.txt")

head(arquivo) # visualizar as primeiras linhas do arquivo
tail(arquivo) # visualizar as ultimas linhas do arquivo

str_count(arquivo, "7")
str_locate_all(arquivo, "7")

#criando funções para manipular strings
strtail <- function(s,n = 1) {
  if(n < 0)
    substring(s,1 - n)
  else
    substring(s,nchar(s)-n+1)
}

strtail("string de teste", 6)
