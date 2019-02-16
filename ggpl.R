install.packages("tidyverse")
install.packages("httr")
library(tidyverse)
diamonds %>%
  group_by(color) %>% 
  mutate( mean_by_price = mean(price), sd_by_price = sd(price)) -> new_data
  
round(min(new_data$mean_by_price))
round(min(new_data$sd_by_price))

head(diamonds)

diamonds %>%
  group_by(color, cut)%>%
  summarize(mean_by_price = mean(price)) %>%
  #select(color, cut, mean_by_price) %>%
  spread(cut, mean_by_price)-> data_k

head(data_k)

diamonds%>%
  group_by(cut) %>%
  summarize(mean = mean(price))%>%
  ggplot(aes(cut, mean, size = mean))+
  geom_point(shape = 5,  color = 'blue')


diamonds%>%
  group_by(cut) %>%
  mutate(mean_k = mean(price), min_k = min(price), max_k = max(price))%>%
  ggplot(aes(cut, mean_k, color = cut))+
  geom_col(aes(y=max_k), color = "blue")+
  geom_col()+
  geom_col(aes(y=min_k), color = "red")
  


