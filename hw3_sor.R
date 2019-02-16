binom.test(1, 1000000, p = 0)

library(dplyr)
data_pos <- read.csv('https://raw.githubusercontent.com/LingData2019/LingData/master/data/poetry_last_in_lines.csv'
             , sep='\t')

data_rns <- read.csv('https://raw.githubusercontent.com/LingData2019/LingData/master/data/freq_rnc_ranked.csv', sep = '\t')

verbs_freq_general <- sum(select(filter(data_rns, PoS == 'v'), Freq.ipm.))
verbs_freq_general

n_words <- sum(select(data_rns, Freq.ipm.))

n_words

verb_prob_general <- verbs_freq_general/n_words
verb_prob_general


verbs_tweent <- dim(filter(data_pos, UPoS =='VERB', Decade == '1920s'))[1]
n_verses_tweent <- nrow(filter(data_pos, Decade == '1920s'))

binom.test(verbs_tweent, n_verses_tweent, p = verb_prob_general)

verbs_nine <- dim(filter(data_pos, UPoS =='VERB', Decade == '1820s'))[1]
n_verses_nine <- nrow(filter(data_pos, Decade == '1820s'))
binom.test(verbs_nine, n_verses_nine, p = verb_prob_general)






data <- rbinom(100, 1, p=0.89)
trues <- sum(data)
exps <- length(data)
binom.test(trues, exps, p=0.89)


for (i in 1:100) { # we run the following code 100 times
  # generate a new dataset
  # calculate the p-value for exact binomial test
  # note that binom.test(...)$p.value extracts p-value from the result of binom.test
  data <- rbinom(100, 1, p=0.89)
  trues <- sum(data)
  #exps <- length(data)
  exps <- 100
  
  k <-binom.test(trues, exps, p=0.89)
  if  (k$p.value< 0.05) {
    print("Ooops!")
    print(k$p.value)
    print(sum(data))
  }
}
library(knitr)

