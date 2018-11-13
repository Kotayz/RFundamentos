# Bar Plots

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("/home/elson/Downloads/RFundamentos/Parte2")
getwd()

?barplot

# Preparando os dados
casamentos <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67),
                     nrow = 3, byrow = T)
casamentos

# Nomeando linhas e colunas na matriz
colnames(casamentos) <- c("0","1-150","151-300",">300")
rownames(casamentos) <- c("Casado","Divorciado","Solteiro")
casamentos

# Construindo o plot
# Os 3 estados civis são representados na mesma coluna para as diferentes quantidades
barplot(casamentos)

# Agora temos uma coluna para cada estado civil, mas na mesma faixa de quantidade
barplot(casamentos, beside = T)

# Com a Transposta da matriz, invertemos as posições entre estado civil e faixa de quantidade
barplot(t(casamentos), beside = T)


