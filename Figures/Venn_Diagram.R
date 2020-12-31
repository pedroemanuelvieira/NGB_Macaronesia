list<-read.csv2("All.csv")
Azores<-as.character(list$Azores)
Madeira<-as.character(list$Madeira)
Canaries<-as.character(list$Canaries)
Selvagens<-as.character(list$Selvagens)
x = list(Azores, Madeira, Canaries, Selvagens)

library(VennDiagram)
# Chart
venn.plot<-venn.diagram(
  x,
  category.names = c("Azores" , "Madeira" , "Canaries", "Selvagens"),
  col = c("darkblue", "darkgreen", "orange", "darkorchid4"),
  cat.col = c("darkblue", "darkgreen", "orange", "darkorchid4"),
  cat.cex = 4,
  cat.fontface = "bold",
  filename = NULL,
  height = 1000, 
  width = 1000, 
  resolution = 900,
  main = "Total",
  output=TRUE,cex = 5,main.cex=5, main.fontface = "bold"
)

grid.draw(venn.plot)

