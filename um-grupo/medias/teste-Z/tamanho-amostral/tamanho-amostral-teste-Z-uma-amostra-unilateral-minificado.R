# install.packages("asbio") # instala o pacote "asbio"
library("asbio") # carrega o pacote asbio
result <- power.z.test(
  sigma = 2, 
  n = NULL, 
  power = 0.80, 
  alpha = 0.05, 
  effect = 1.5,
  test = "one.tail", 
  strict = FALSE
)
print(ceiling(result$n))