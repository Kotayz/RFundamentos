#fatores

vec1 <- c("Macho", "Femea", "Femea", "Macho", "Macho")
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)

#variáveis categóricas nominais
#não existe uma ordem implícita
animais <- c("Zebra", "Pantera", "Rinicaronte", "Macaco", "Tigre")
animais
class(animais)
fac_animais <- factor(animais)
fac_animais
class(fac_animais)
levels(fac_animais) #verificar os níveis

#variáveis categóricas ordinais
#possuem uma ordem natural
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
fac_grad <- factor(grad, ordered = TRUE, levels = c("Doutorado", "Mestrado", "Bacharelado"))
fac_grad
levels(fac_grad)

#sumarizar os dados fornece uma visão geral sobre o conterúdo
summary(fac_grad)
summary(grad)

vec2 <- c("M", "F", "F", "M", "M", "M", "F", "F", "M", "M", "M", "F", "F", "M", "M")
vec2
fac_vec2 <- factor(vec2)
fac_vec2
levels(fac_vec2) <- c("Femea", "Macho") #mudar o nome
fac_vec2
summary(fac_vec2)
summary(vec2)


#mais exemplos
data = c(1, 2, 2, 3, 1, 2, 3, 3, 1, 2, 3, 3, 1)
fdata = factor(data)
fdata

rdata <- factor(data, labels = c("I", "II", "III"))
rdata

#fatores não-ordenados
set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1

#transformando os dados. o r apenas criou os níveis
f.set1 <- factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)

#fatores ordenados
o.set1 <- factor(set1, 
                 levels = c("CA", "BA", "AA", "CC", "B"), 
                 ordered = TRUE)

o.set1
is.ordered(o.set1)

as.numeric(o.set1)
table(o.set1)

#fatores e dataframes
df <- read.csv2("etnias.csv", sep = ',')
df

#variáveis do tipo fator
str(df)

#níveis dos fatores
# internamente, o R armazena valores inteiros e faz um mapeamento
# e agrupa as estatístcas por níveis. agora, se fizermos
# a contabilização de para cada categoria
levels(df$Etnia)
summary(df$Etnia)

#plot
# agora se fizermos um plt, temos um boxplot para estar variáveis
plot(df$Idade~df$Etnia, xlab = 'Etnia', ylab = 'Idade', main = 'Idade por Etnia')

#regressão
summary(lm(Idade~Etnia, data=df))

#convertendo uma coluna em variável categórica
df$Estado_Civil.cat <- factor(df$Estado_Civil, labels=c("Solteiro", "Casado", "Divorciado"))
df
str(df)