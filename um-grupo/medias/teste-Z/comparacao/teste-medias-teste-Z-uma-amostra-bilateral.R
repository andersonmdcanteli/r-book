### ----------------------------------------------------------------------------- ###
### ------ Teste Z bilateral para comparar uma média com um valor esperado ------ ###
### ----------------------------------------------------------------------------- ###

# install.packages("asbio") # instala o pacote "asbio"
shell("cls") # limpa o console
library("asbio") # carrega o pacote asbio

### ------------------------------ ###
### ------ Entrada de dados ------ ###
### ------------------------------ ###
dados <- NULL
media <- 200
mu_zero <- 190
desv_pad <- 3.0
tamanho_amostral <- 14
alpha <- 0.05

### ------------------------------- ###
### ------ Aplicando o teste ------ ###
### ------------------------------- ###
result <- one.sample.z(
  data = dados, 
  null.mu = mu_zero, 
  xbar = media, 
  sigma = desv_pad, 
  n = tamanho_amostral, 
  alternative = "two.sided", 
  conf = 1 - alpha
)

### -------------------------------------- ###
### ------ Imprimindo os resultados ------ ###
### -------------------------------------- ###


## ---- Estatística ---- ##
cat("Estatística do teste:", result[[3]][[1]], "\n")

## ---- p-valor ---- ##
cat("p-valor:", result[[3]][[2]], "\n")

## ---- Conclusão ---- ##
# -- Calculando a média caso dados != NULL -- #
if (!is.null(dados)){
  media = mean(dados) 
}

if (result[[3]][[2]] < alpha){
  cat("Rejeita H₀ (", media, "≠", mu_zero, ", adotando ", 100*(1-alpha), "% de confiança)")
}else{
  cat("Falha em rejeitar a H₀ (",  media, "=", mu_zero, ", adotando ", 100*(1-alpha), "% de confiança)")
}

## ---- Intervalo de confiança da média ---- ##
cat("\n")
print(result[[4]])


### -------------------------- ###
### ------ Documentação ------ ###
### -------------------------- ###

# https://www.rdocumentation.org/packages/asbio/versions/1.9-2/topics/one.sample.z #

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








