artists <- scan("http://math-info.hse.ru/f/2018-19/ling-data/artists-sizes.txt")
mean(artists)
artists[artists<7000]
f <- seq(1000, 5000, 30)
quantile(artists, probs = c(0.43,0.58,0.95)) #quantiles are not medians, 
13208*0.43
artists <- sort(artists)
part_art <-artists[1:5679]
median(part_art)
# data generation
1:100
1:100*5-4
sample(artists,100) # random simple without repeating
sample(artists, size=100, prob = seq(0,1,length.out = length(artists)))

options(scipen = 999)
hist(artists)


v <- c('детский сад', 'старшая школа', 'аспиратнтура', 'магистратура')
typeof(v)
nchar(v)
v2 <- factor(v)
v2
v3 <- factor(v, levels = c('детский сад', 'старшая школа', 'аспиратнтура', 'магистратура'))
v3
# dataFrame
df <- data.frame(names = c('ed','violetta', 'art'),
           age = c(43,34,23),
           sex = c('m', 'f', 'm'))
summary(df)
str(df)
View(df)
getwd()
#setwd() set pwd to find permanently files


df1 <- read.csv('http://math-info.hse.ru/f/2018-19/ling-data/Chi.kuk.2007.csv')
df1
df1$age
#df[strings, columns]
df1[2,4]

df1[df1$age<20,]

women
women$weight_kg <- women$weight*0.453592
women

women$height_cm <- women$height*2.54
women
