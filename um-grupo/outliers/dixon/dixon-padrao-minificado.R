library("outliers")

x <- c(177, 144, 157, 141, 367, 120, 153, 136, 160, 144, 141)
alpha <- 0.05
result <- dixon.test(x)
print(result)
