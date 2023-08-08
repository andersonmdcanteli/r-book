### ----------------------------------------------------------------------------------------------------- ###
### ------ Tamanho amostral para o teste Z bilateral para comparar uma média com um valor esperado ------ ###
### ----------------------------------------------------------------------------------------------------- ###

# install.packages("asbio") # instala o pacote "asbio"
shell("cls") # limpa o console
library("asbio") # carrega o pacote asbio

### ------------------------------ ###
### ------ Entrada de dados ------ ###
### ------------------------------ ###
alpha <- 0.05
beta <- 0.20
efeito <- 1.5
desv_pad <- 2

### ------------------------------- ###
### ------ Aplicando o teste ------ ###
### ------------------------------- ###
result <- power.z.test(
  sigma = desv_pad, 
  n = NULL, 
  power = 1 - beta, 
  alpha = alpha, 
  effect = efeito,
  test = "two.tail", 
  strict = FALSE
)

### -------------------------------------- ###
### ------ Imprimindo os resultados ------ ###
### -------------------------------------- ###
print(result$n)
cat("A tamanho mínimo para manter o poder específicado do teste Z bilateral para uma amostra é:", ceiling(result$n), "amostras.")
cat("\n")


### -------------------------- ###
### ------ Documentação ------ ###
### -------------------------- ###

# https://www.rdocumentation.org/packages/asbio/versions/1.9-2/topics/power.z.test #

### ------------------------ ###
### ------ Referência ------ ###
### ------------------------ ###

# print(citation("asbio"))

# To cite package 'asbio' in publications use:
  
# Aho K (2023). _asbio: A Collection of Statistical Tools for Biologists_. R package version 1.9-2.

# A BibTeX entry for LaTeX users is

# @Manual{,
#  title = {asbio: A Collection of Statistical Tools for Biologists},
#  author = {Ken Aho},
#  year = {2023},
#  note = {R package version 1.9-2},
#}
