#text mining

#exemplo 1
install.packages("tm")
install.packages(c("tm", "SnowballC", "wordcloud", "RColorBrewer"))
library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

# carregando o dataset
df <- read.csv('questoes.csv', stringsAsFactors = FALSE)
head(df)

#criando um corpus
dfCorpus <- Corpus(VectorSource(df$Question))
class(dfCorpus)

#remove pontuação
dfCorpus <- tm_map(dfCorpus, removePunctuation)

#remover palavras específicas do inglês
dfCorpus <- tm_map(dfCorpus, removeWords, stopwords('english'))

#neste processo, várias versões de uma palavra são convertidas em uma única
dfCorpus <-tm_map(dfCorpus, stemDocument)

#removendo palavras específicas
dfCorpus <- tm_map(dfCorpus, removeWords, c('the', 'this', stopwords('english')))

#wordcloud
wordcloud(dfCorpus, max.words = 100, random.order = FALSE)

#exemplo2
install.packages("tm")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("RColorBrewer")

library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")

#lendo o arquivo
arquivo <- "http://sthda.com/sthda/RDoc/example-files/martin-luther-king-i-have-a-dream-speech.txt"
texto <-readLines(arquivo)

#carregando os dados como Corpus
docs <- Corpus(VectorSource(texto))

#pre-processamento
inspect(docs)
toSpace <- content_transformer(function (x, pattern) gsub(pattern, "", x))
docs <- tm_map(docs, toSpace, "/")
docs <- tm_map(docs, toSpace, "@")
docs <- tm_map(docs, toSpace, "||/")

#converte o texto para minúsculo
docs <- tm_map(docs, content_transformer(tolower))

#remove números
docs <- tm_map(docs, removeNumbers)

#remove as palavras mais comuns do idioma inglês
docs <- tm_map(docs, removeWords, stopwords("english"))

#você definir um vetor de palavras(stopwords) a serem removidas do texto
docs <- tm_map(docs, removeWords, c("blabla1", "blabla2"))

#remove pontuação
docs <-tm_map(docs, removePunctuation)

#elimina espaços extras
docs <- tm_map(docs, stripWhitespace)

# text stremming
docs <- tm_map(docs, stemDocument)

dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(word = names(v), freq = v)
head(d, 10)

#wordcloud
set.seed(1234)
wordcloud(words = d$word, freq = d$freq, min.freq = 1,
          max.words = 200, random.order = FALSE, rot.per = 0.35,
          colors = brewer.pal(8, "Dark2"))

#tabela de frequência
findFreaTerms(dtm, lowfreq = 4)
findAssocs(dtm, terms = "freedom", corlimit = 0.3)
head(d, 10)

#graficos de barras com as palavras mais frequentes
barplot(d[1:10,]$freq, las = 2, names.arg = d[1:10,]$word,
        col = "lightblue", main = "Most frequent words",
        ylab = "Word frequencies")