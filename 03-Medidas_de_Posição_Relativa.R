# Estatística Básica

# Parte 3 - Medidas de Posição Relativa

# Definindo a pasta de trabahlo
# Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/kayme/OneDrive/Área de Trabalho/Cursos/BI/DSA/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv" , fileEncoding = "windows-1252")

# Resumo dos dados
head(vendas)
tail(vendas)
View(vendas)

# Medidas de Tendência central
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')])

# Esplorando variáveis numéricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferença entre Q3 e Q1
range(vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))
