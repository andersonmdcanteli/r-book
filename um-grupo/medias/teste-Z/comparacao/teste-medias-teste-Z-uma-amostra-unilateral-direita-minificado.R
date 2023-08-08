# install.packages("asbio") # instala o pacote "asbio"
shell("cls") # limpa o console
library("asbio") # carrega o pacote asbio

dados <- NULL
media <- 200
mu_zero <- 190
desv_pad <- 3
tamanho_amostral <- 11
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
