dados <- c(197.9, 195.9, 201.2, 201.2, 198, 204, 197.1, 203.3, 202.1, 202.9, 196.3)
media <- 200
desvio_padrao <- 3
alpha <- 0.05

result <- ks.test(
  dados, 
  "pnorm", 
  media, 
  desvio_padrao
)
print(result)