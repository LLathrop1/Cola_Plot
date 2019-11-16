library(tidyverse)
library(ggplot2)
library(lubridate)
library(stringr)
library(ggimage)


#Data taken from Wikipedia and images source given
sugar_count<-c("35","41","42","37.5")
cola_brand<-c("Cocoa-Cola", "Pepsi","RC Cola","Jolt Cola")
cokeImages<- c("http://pngimg.com/uploads/cocacola/cocacola_PNG22.png",
               "http://pngimg.com/uploads/pepsi/pepsi_PNG8950.png",
               "https://pngimage.net/wp-content/uploads/2018/06/rc-cola-png-2.png",
               "https://pbs.twimg.com/media/EDkixryXYAEFdTF.png")

view(coke_df)

#Making the dataframe
coke_df<-as.data.frame(cbind(sugar_count, cola_brand,cokeImages))

#Making the plot
ggplot(coke_df, aes(x=cola_brand,y=sugar_count))+
  geom_image(aes(image=cokeImages), size =.1)+
  labs(title="Cola Brand Sugar Content", subtitle = "Sugar Based on 12oz Sugar in Grams",
       x= "Cola Brand", y="Sugar Count in Grams")+
  theme(plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5))
  
  
  


