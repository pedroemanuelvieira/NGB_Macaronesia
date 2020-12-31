
library(ggplot2)
library(scales)
library(dplyr)

lists<-read.csv("Data_for_figure2.csv", sep = ";")

#Transform data to be plotted
plot_data <- lists %>% 
  count( Region, Phylum, Status) %>% 
  group_by(Region, Phylum)

#If you want to invert data (mirror)
#plot_data$n<-ifelse(plot_data$Status %in% "Native", plot_data$n*(-1), plot_data$n*1)




plot_data$Phylum_f <- factor(plot_data$Phylum, levels=c("Sipuncula","Porifera","Platyhelminthes",
                                                "Phoronida","Nematoda","Mollusca","Gnathostomulida",
                                                "Entoprocta","Echinodermata","Ctenophora",     
                                                "Cnidaria","Chordata","Chaetognatha","Bryozoa",
                                                "Brachiopoda","Arthropoda","Annelida" ))


g <- ggplot(plot_data, aes(Phylum_f, y = n, fill=Region))

#change hjust to adjust numbers in front of bars
p <- g + geom_col(width = 0.9) + 
  geom_text(aes(label = n), hjust = 1.3, size=2.5) +
  scale_fill_manual(values = c("Azores" = "darkblue",
                              "Canaries"="orange",
                              "Madeira"="darkgreen",
                              "Selvagens"="darkorchid4")) 


#if you want to invert bars, change ylim
p + coord_flip() +  theme_classic() + facet_grid(Region ~ Status, scales = "free_y") +
  theme(legend.position="bottom", legend.direction="horizontal") +
  labs(y = "Number of Species", x = "Phylum") + ylim(750,0)


