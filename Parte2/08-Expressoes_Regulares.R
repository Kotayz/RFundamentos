#expressões regulares

str <- c(
  "Expressões", "regulares", "em linguaagem R", 
  "permitem a busca de padrões", "e exploração de textos", 
  "podemos buscar padrões em dígitos", 
  "como por exemplo",
  "10992451280"
)

length(str)
str

# grep()
grep("ex", str, value = F) #busca um padrão dentro da vetor
grep("ex", str, value = T) #mesmo processo, mas agora exibe mais detalhes
grep("\\d", str, value = F)
grep("\\d", str, value = T)

#grepl()
#utilizado para verificar se um padrão foi encontrato. Retorna um vetor de valores lógicos
grepl("\\d+", str)
grepl("\\D", str)

#utilizado para verificar se um padrão foi encontrato e se encontrar um padrão, vai substituir por um valor
gsub("em", "|", str)
gsub("ex", "EX", str, ignore.case = T)

#sub()
#similar ao gsub, porém substitui somente o primeiro padrão encontrato em cada elemento
sub("em", "EM", str)

#regexps()
#para buscar padrões. retornando um vetor
frase <- "isso é uma string."
regexpr(pattern = "u", frase)

#gregexpr()
#para buscar padrões, mas o retorno é diferente. retornando uma lista
gregexpr(pattern = "u", frase)

str2 <- c("2678 é maior que 45 - @???!$",
          "Vamos escrever 14 scripts R")
str2

#gsub()
gsub("\\d", "", str2)
gsub("\\D", "", str2)
gsub("\\s", "", str2)
gsub("[iot]", "Q", str2)
gsub("[[:punct:]]", "", str2)
gsub("[^@]", "", str2)