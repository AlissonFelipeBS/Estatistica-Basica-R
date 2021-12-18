# Estatística Básica

# Parte 1 - Medidas de Posição

# Definindo a pasta de trabalho
# Substitua o caminho pela pasta no seu computador
setwd("C:/Users/kayme/OneDrive/Área de Trabalho/Cursos/BI/DSA/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv" , fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

# Média
mean(vendas$Valor)
mean(vendas$Custo)

# Média Ponderada
weighted.mean(vendas$Valor, w = vendas$Custo)

# Mediana
median(vendas$Valor)
median(vendas$Custo)

# Moda
# Criando uma função
moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

# Obtendo a Moda
resultado <- moda(vendas$Valor)
print(resultado)

resultado_custo <- moda(vendas$Custo)
print(resultado_custo)

# Criando gráfico de média  de Valor por Estado com ggplot2
install.packages("ggplot2")
library(ggplot2)

# Criar o gráfico
ggplot(vendas) + 
  stat_summary(aes(x = Estado, 
                   y = Valor), 
               fun = mean, 
               geom = "bar", 
               fill = "blue", 
               col = "black") +
  labs(title = "Média de Valor por Estado")

