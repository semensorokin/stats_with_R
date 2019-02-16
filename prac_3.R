m  <- matrix(0, nrow = 2, ncol = 3)
m
v <- 1:12
v 
d <- matrix(v, nrow = 3, ncol = 4, byrow = TRUE) 
d 
rowSums(d)
sample(c(0,1), 10, replace=TRUE)

tosses <- 10 #количесвто подбрасываний в одном эксперименте
samples <- 10000

data = matrix(sample(c(0,1), tosses*samples, replace = TRUE), 
              nrow = samples, ncol = tosses, byrow = TRUE) 
head(data)

phat <- rowSums(data)/ tosses
head(phat)
hist(phat, breaks = tosses, xlim = c(0,1))

 binom.test(3,10, p = 0.5) # три из 10 орлов в наших данных, гипотеза в том что монетка номальная р(орел)= 0.5

 binom.test(2,10)

 binom.test(0,10) 
 
 df <- read.csv('https://raw.githubusercontent.com/LingData2019/LingData/master/data/poetry_last_in_lines.csv', sep ='\t')
head(df) 

table(df$UPoS) / sum(table(df$UPoS))

nouns <- df[df$UPoS == 'NOUN',]
total <- nrow(df)
nnouns <- nrow(nouns)

binom.test(nnouns, total, p = 0.4)
