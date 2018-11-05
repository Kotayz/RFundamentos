# Matrizes

# Criando Matrizes

# número de linhas

matrix (c(1, 2, 3, 4, 5, 6), nr = 2)
matrix (c(1, 2, 3, 4, 5, 6), nr = 3)
matrix (c(1, 2, 3, 4, 5, 6), nr = 6)

# número de colunas
matrix(c(1, 2, 3, 4, 5, 6), nc = 2)

# help
?matrix

# matrizes precisam ter um número  par de valores
matrix( c(1, 2, 3, 4, 5), nc = 2)

# criando matrizes a partir de valores e preenchendo a partir
meus_dados = c(1:10)
matrix(data=meus_dados, nrow = 5, ncol = 2, byrow = T) #byrow especifica a orientação de criação para linha. T =TRUE. O default de orientação é por coluna
matrix(data=meus_dados, nrow = 5, ncol = 2) # Orientação por coluna

# fatiando a matriz
mat <- matrix(c(2, 3, 4, 5), nr = 2)
mat
mat[1, 2] # imprime o valor pelo indice. Sendo:[linha, coluna]
mat[2, 2]
mat[1, 3]
mat[, 2] # um dos valores pode ser omitido

# criando uma matriz diagonal
matriz = 1:3
diag (matriz)

# extraindo vetor de uma matriz diagonal
vetor = diag (matriz)
diag(vetor)

# transposta da matriz(Visualizar os dados por outro angulo)
W <- matrix(c(2, 4, 8, 12), nr =2, ncol = 2)
W
t(W)
U <- t(W)
U

# obtendo um matriz inversa
solve(W)

# Multiplicação de Matrizes
mat1 <- matrix(c(2,3,4,5), nr = 2)
mat1
mat2 <- matrix(c(6, 7, 8, 9), nr = 2)
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2

# Multiplicando Matriz com Vetor
x = c(1:4)
x
y <- matrix(c(2, 3, 4, 5), nr = 2)
x * y

# Nomeando a matriz
mat3 <- matrix(c('Futebol', 'Natação', 'Campo', 'Piscina'), nr = 2)
mat3
dimnames(mat3) = (list( c("Linha1", "Linha2"), c("Coluna1", "Coluna2")))
mat3

# identificando linhas e colunas no momento de criação da matriz
matrix(c(1, 2, 3, 4), nr = 2, nc = 2, dimnames = list( c("Linha1", "Linha2"), c("Coluna1", "Coluna2")))

# combinando matrizes
mat4 <- matrix(c(2, 3, 4, 5), nr =2)
mat4
mat5 <- matrix(c(6, 7, 8, 9), nr = 2)
mat5
cbind(mat4, mat5) # União baseada em colunas
rbind(mat4, mat5) # União baseada em linhas

# Descontruindo a matriz
c(mat4) # transforma matrix em vetor
