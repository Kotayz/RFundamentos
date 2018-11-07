 ###dataframes

#criando um dataframe vazio
df <- data.frame()
class(df)
df

#criando vetores vazios
nomes <- character()
idades <- numeric()
datas <- as.Date(character())
codigos <- integer()

df <- data.frame(c(nomes, idades, datas, codigos))
df

#criando vetores
pais = c("EUA", "Dinamarca", "Holanda", "Espanha", "Brasil")
nome = c("Maurício", "Pedro", "Aline", "Beatriz", "Marta")
altura = c(1.78, 1.72, 1.63, 1.59, 1.63)
codigo = c(5001, 2183, 4702, 7965, 8890)

#criando um dataframe de diversos vetores
pesquisa <- data.frame(pais, nome, altura, codigo)
pesquisa

#adicionando um novo vetor a um dataframe existente
olhos <- c("verde", "azul", "azul", "castanho", "castanho")
pesq <- cbind(pesquisa, olhos)
pesq

#informações sobre o dataframe
str(pesq)
dim(pesq)
length(pesq)

#obtendo um vetor de um dataframe
pesq$pais
pesq$nome

#extraindo um único valor [linha, coluna]
pesq[1, 1]
pesq[3, 2]

#número de linhas e colunas
nrow(pesq)
ncol(pesq)

#primeiros elementos do dataframe
head(pesq)
head(mtcars)

#últimos elementos do dataframe
tail(pesq)
tail(mtcars)

#dataframes build-in do R
?mtcars
mtcars

#filtro para um subset de dados que atendem a um critério
pesq[altura < 1.60, ]
pesq[altura < 1.60, c('codigo', 'olhos')]
pesq

#dataframes nomeados
names(pesq <- c("País", "Nome", "Altura", "Código", "Olhos"))
pesq

colnames(pesq) <- c("var 1", "var 2", "var 3", "var 4", "var 5")
rownames(pesq) <- c("obs 1", "obs 2", "obs 3", "obs 4", "obs 5")
pesq

# importando arquivos
# read.xls() - excel
# read.mtp() - minitab
# read.spss() - spss
# read.table() - arquivos txt
# read.csv() - arquivos csv

?read.csv
df2 <- data.frame(read.csv(file = 'dframe.csv', header = TRUE, sep = ","))

#exibir primeiras linhas do arquivo
head(df2)
summary(df2)

df2$Diabete
df2$status
df2$Status

plot(df2$Admdate)

summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)

#combinando dataframes
df3 <- merge(pesq, df2)
df3