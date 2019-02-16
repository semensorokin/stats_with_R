age <- c(44, 50, 42, 64, 66, 42, 72, 56, 72, 54, 46, 48, 48, 52, 50, 66, 84)
typeof(age)
mean(age)
median(age)
sd(age)
var(age)

words <- c('pie', 'bar', 'bar', 'pie', 'pie', 'bar', 'bar', 'chart')
table(words)/length(words)

hist(age, breaks = 5, col = c('blue', 'white', 'red', 'green', 'gray'))
