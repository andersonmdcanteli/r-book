### ------------------------------------------------------ ###
### ------ Teste de Normalidade de Anderson-Darling ------ ###
### ------------------------------------------------------ ###

# install.packages("nortest") # instala o pacote nortest
library("nortest") # carrega o pacote nortest
shell("cls") # limpa o console

### ------------------------------ ###
### ------ Entrada de dados ------ ###
### ------------------------------ ###
dados <- c(197.9, 195.9, 201.2, 201.2, 198, 204, 197.1, 203.3, 202.1, 202.9, 196.3)
alpha <- 0.05

### ------------------------------- ###
### ------ Aplicando o teste ------ ###
### ------------------------------- ###
result <- ad.test(dados)

### -------------------------------------- ###
### ------ Imprimindo os resultados ------ ###
### -------------------------------------- ###

## ---- Estatística ---- ##
cat("Estatística do teste:", result$statistic, "\n")

## ---- p-valor ---- ##
cat("p-valor:", result$p.value, "\n\n") 

## ---- Conclusão ---- ##
if (result$p.value < alpha){
  cat("Rejeita H₀  (os dados não são similares a distribuição Normal, adotando ", 100*(1-alpha), "% de confiança)\n")
}else{
  cat("Falha em rejeitar H₀ (os dados seguem a distribuição Normal, adotando", 100*(1-alpha), "% de confiança)\n")
}

### -------------------------- ###
### ------ Documentação ------ ###
### -------------------------- ###

# https://www.rdocumentation.org/packages/nortest/versions/1.0-4/topics/ad.test

### ------------------------ ###
### ------ Referência ------ ###
### ------------------------ ###

#print(citation("nortest"))

#To cite package 'nortest' in publications use:
  
#  Gross J, Ligges U (2015). _nortest: Tests for Normality_. R package
#version 1.0-4.

#A BibTeX entry for LaTeX users is

#@Manual{,
  #title = {nortest: Tests for Normality},
  #author = {Juergen Gross and Uwe Ligges},
  #year = {2015},
 # note = {R package version 1.0-4},
#}
