# Estatística Básica

# Exercício 1 

# Definindo a pasta de trabalho
setwd("C:/Users/kayme/OneDrive/Área de Trabalho/Cursos/BI/DSA/Cap12")
getwd()

# Carregando o dataset
notas <- read.csv("Notas.csv" , fileEncoding = "windows-1252")

# 1 - Resumo do dataset
View(notas)
str(notas)
summary(notas)

# 2 - Média
mean(notas$TurmaA)
mean(notas$TurmaB)

# 3 - Variação de Notas
var(notas)
sd(notas$TurmaA)
sd(notas$TurmaB)

# 3 - Turma  apresentou maior variabilidade de notas foi a Turma A

# 4 - Coeficiente de variação 
media_ta <- mean(notas$TurmaA)
media_tb <- mean(notas$TurmaB)

sd_ta <- sd(notas$TurmaA)
sd_tb <- sd(notas$TurmaB)

cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

cvA
cvB

# 5 - Qual nota apareceu mais vezes em cada turma?
calculaModa <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
  
  calculaModa(notas$TurmaA)
  calculaModa(notas$TurmaB)


