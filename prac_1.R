# seminar 1
print('HEllo world')

#mathematical operation
1 +4
sqrt(100)
7**2
7^2
log(10)
log10(1000)
log(8, base=2)
exp(1)
round(10.12332251, 2)
round(10.12332251, 3)


print('Some variables')
s <- 'hello'
s
ups <-toupper(s)

print('about vectors')

vector <- c(1,2,5,9)
vector
class(s)
class(vector)

x<-c(0,9,23,34,1,8,7,7,6)
min(x)
max(x)
mean(x)
median(x)
var(x) #variance 
sqrt(var(x))
sd(x) #standart deviation

table(x)
factor(x)

table(x)/sum(table(x))


hist(x)
hist(table(x)/sum(table(x)), col = 'red')

hist(x, col = 'red', freq = FALSE)


hist(x, breaks = 4)
help(hist)
