samplex <- sample(1:100, 100, replace = TRUE)

sampley <- samplex + rnorm(100, sd = 4)
mydf <- data.frame(x = samplex, y = sampley)
plot(sampley ~ samplex, data = mydf)
model <- lm(sampley ~ samplex, data = mydf)
abline(model, col = "red")
summary(model)
coef(model)
