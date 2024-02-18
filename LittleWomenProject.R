#Data Workshop Capstone - LittleWomen Data
#Sparky
#alicesweedo@gmail.com
#2024-02-18

library(ggplot2)
#create data
little_women <-data.frame(
  listOfNames = c("Meg", "Jo", "Beth", "Amy"),
  timesMentioned = c(683,1355,459,645)
)

plotOfNames = ggplot(data=little_women,mapping=aes(x=listOfNames, y=timesMentioned)) +
  geom_bar(stat = "identity", width = 0.7, fill = "darkblue") +
  xlab("Character Names") +
  ylab("Number of Times Mentioned") +
  ggtitle("Figure 1: References to Characters") +
  scale_y_continuous(expand = c(0,0))+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"), 
        plot.title = element_text(face = "bold"))

plotOfNames

ggsave(filename = "little_women_plot.png", plot = plotOfNames)
