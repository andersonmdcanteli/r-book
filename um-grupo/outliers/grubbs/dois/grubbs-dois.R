### ------------------------------ ###
### ------ Teste de Grubbs'' ------ ###
### ------------------------------ ###

# install.packages("outliers") # instala o pacote outliers
library("outliers") # carrega o pacote outliers
shell("cls") # limpa o console


### ------------------------------ ###
### ------ Entrada de dados ------ ###
### ------------------------------ ###
x <- c(177, 144, 157, 141, 367, 120, 153, 136, 160, 144, 141)
alpha <- 0.05

### ------------------------------- ###
### ------ Aplicando o teste ------ ###
### ------------------------------- ###
result <- grubbs.test(
  x, 
  type=11
)

### -------------------------------------- ###
### ------ Imprimindo os resultados ------ ###
### -------------------------------------- ###

## ---- Estatística ---- ##
cat("Estatística do teste:", result$statistic[1], "\n")

## ---- p-valor ---- ##
cat("p-valor:", result$p.value, "\n\n") 

## ---- Conclusão ---- ##
if (result$p.value < alpha){
  cat("Rejeita H₀  (existem dois possíveis outliers  no conjunto de dados, adotando ", 100*(1-alpha), "% de confiança)\n")
  print(result$alternative)
}else{
  cat("Falha em rejeitar H₀ (o conjunto de dados não apresenta possíveis outliers, adotando", 100*(1-alpha), "% de confiança)\n")
}


### -------------------------- ###
### ------ Documentação ------ ###
### -------------------------- ###

# https://www.rdocumentation.org/packages/outliers/versions/0.15/topics/grubbs.test


### ------------------------ ###
### ------ Referência ------ ###
### ------------------------ ###

# print(citation("outliers"))

# To cite package ‘outliers’ in publications use:
  
  #Komsta L (2022). _outliers: Tests for Outliers_. https://www.R-project.org, http://www.komsta.net/.

# A BibTeX entry for LaTeX users is

#@Manual{,
  #title = {outliers: Tests for Outliers},
  #author = {Lukasz Komsta},
  #year = {2022},
  #note = {https://www.R-project.org, http://www.komsta.net/},
#}
