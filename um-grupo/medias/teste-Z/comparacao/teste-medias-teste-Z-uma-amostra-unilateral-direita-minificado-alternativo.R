# install.packages("asbio") # instala o pacote "asbio"
shell("cls") # limpa o console
library("asbio") # carrega o pacote asbio

dados <- c(197.9, 195.9, 201.2, 201.2, 198, 204, 197.1, 203.3, 202.1, 202.9, 196.3)
media <- NULL
mu_zero <- 190
desv_pad <- 3
tamanho_amostral <- NULL
alpha <- 0.05

result <- one.sample.z(
  data = dados, 
  null.mu = mu_zero, 
  xbar = media, 
  sigma = desv_pad, 
  n = tamanho_amostral, 
  alternative = "greater", 
  conf = 1 - alpha
)

print(result)
help(shapiro.test)