health_c <- count(health, StdName)
econ_c <- count(econ, StdName)

names(health_c) <- c("Event", "Occurance")
names(econ_c) <- c("Event", "Occurance")

colour_h <- brewer.pal(3, "Set1")
    colour_h <- colour_h[2]

colour_e <- brewer.pal(3, "Set2")
    colour_e <- colour_e[1]

h<-ggplot(health_c, aes(x=Event, y=Occurance))+
  geom_histogram(stat = "identity", fill = colour_h)+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  theme(legend.position="none")+
  xlab("")+
  annotate("text", x = 10, y = 2500, label = "Health-endangering Events")+
  annotate("rect", xmin = 5, xmax = 15, ymin = 2300, ymax = 2700, alpha = .1)

e<-ggplot(econ_c, aes(x=Event, y=Occurance, fill=colour_e))+
  geom_histogram(stat = "identity", fill = colour_e)+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  theme(legend.position="none")+
  xlab("")+
  annotate("text", x = 11, y = 90000, label = "Damage-causing Events")+
  annotate("rect", xmin = 5, xmax = 17, ymin = 82000, ymax = 98000, alpha = .1)

grid.arrange(h, e, ncol = 1, top="Fig.2 - Occurance of health-endangering/damage-causing Storm Events", bottom="Storm Event Type")