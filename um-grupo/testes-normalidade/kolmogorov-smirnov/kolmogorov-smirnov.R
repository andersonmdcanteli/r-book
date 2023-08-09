### -------------------------------------------------------- ###
### ------ Teste de Normalidade de Kolmogorov-Smirnov ------ ###
### -------------------------------------------------------- ###

shell("cls") # limpa o console

### ------------------------------ ###
### ------ Entrada de dados ------ ###
### ------------------------------ ###
dados <- c(197.9, 195.9, 201.2, 201.2, 198, 204, 197.1, 203.3, 202.1, 202.9, 196.3)
media <- 200
desvio_padrao <- 3
alpha <- 0.05

### ------------------------------- ###
### ------ Aplicando o teste ------ ###
### ------------------------------- ###
result <- ks.test(
  dados, 
  "pnorm", 
  media, 
  desvio_padrao
)

### -------------------------------------- ###
### ------ Imprimindo os resultados ------ ###
### -------------------------------------- ###

## ---- Estatística ---- ##
cat("Estatística do teste:", result$statistic, "\n")

## ---- p-valor ---- ##
cat("p-valor:", result$p.value, "\n\n") 

## ---- Conclusão ---- ##
if (result$p.value < alpha){
  cat("Rejeita H₀  (os dados não são similares a distribuição Normal, adotando ", 100*(1-alpha), "% de confiança)")
}else{
  cat("Falha em rejeitar H₀ (os dados seguem a distribuição Normal, adotando", 100*(1-alpha), "% de confiança)")
}

### -------------------------- ###
### ------ Documentação ------ ###
### -------------------------- ###

# https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/ks.test

### ------------------------ ###
### ------ Referência ------ ###
### ------------------------ ###

# print(citation("stats"))

# The ‘stats’ package is part of R.  To cite R in publications use:
  
#  R Core Team (2023). _R: A Language and Environment for Statistical Computing_. R Foundation for Statistical Computing, Vienna, Austria. <https://www.R-project.org/>.

# A BibTeX entry for LaTeX users is

# @Manual{,
  #title = {R: A Language and Environment for Statistical Computing},
  #author = {{R Core Team}},
  #organization = {R Foundation for Statistical Computing},
  #address = {Vienna, Austria},
  #year = {2023},
  #url = {https://www.R-project.org/},
#}

