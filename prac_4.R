#install.packages('DescTools')
library(DescTools)

nheads <- 4
n1 <- 20

values <- BinomCI(nheads, n1)
values[3]-values[2]

n2 <-40
values <- BinomCI(nheads, n2)
values[3]-values[2]

ci.99 <- BinomCI(nheads, n1, conf.level = 0.99)
ci.99[3]-ci.99[2]

population <- sample(0:1, 10000, replace = TRUE)
p0 <- mean(population)

n<-100
samples <- 1000
dat <- matrix (sample(c(0,1), n*samples, replace = TRUE), ncol = n, byrow = TRUE)


cis <- BinomCI(rowSums(dat), n)
colnames(cis) <- c('est', 'lower', 'upper')
head(cis[,'lower'])
head(cis[,'upper'])

sum(cis[, 2] <= p0 & cis[,3]>= p0)
sum(cis[, 2] <= p0 & cis[,3]>= p0)/1000


poetry <- read.csv('https://raw.githubusercontent.com/LingData2019/LingData/master/data/poetry_last_in_lines.csv', sep='\t')
str(poetry)

nnouns <- nrow(poetry[poetry$UPoS == 'NOUN', ])
total <- nrow(poetry)

BinomCI(nnouns, total)

phono <- read.csv('http://math-info.hse.ru/f/2018-19/ling-data/icelandic.csv')
phono


asp <- phono[phono$aspiration == 'yes',]
nasp <- phono[phono$aspiration == 'no',]

MeanCI(asp$vowel.dur)
MeanCI(nasp$vowel.dur)

install.packages('sciplot')
library(sciplot)
lineplot.CI(data = phono, response = vowel.dur, x.factor = aspiration)

w1 <- phono[phono$aspiration =='yes' & phono$roundness == 'round',]
w2 <- phono[phono$aspiration =='yes' & phono$roundness == 'unrounded',]

MeanCI(w1$vowel.dur)
MeanCI(w2$vowel.dur)

lineplot.CI(data = phono[phono$aspiration =='yes',], response = vowel.dur, x.factor = roundness)

t.test(w1$vowel.dur, w2$vowel.dur)

MeanDiffCI(w1$vowel.dur, w2$vowel.dur)# если в эту границу включен 0, то тогда нулевая гипотеза не отвергается

boxplot(phono$vowel.dur ~ phono$cons1)
res <- aov(phono$vowel.dur ~ phono$cons1)
res
summary(res)

install.packages('knitr')
