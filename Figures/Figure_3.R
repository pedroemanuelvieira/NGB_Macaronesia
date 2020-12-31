
#install.packages("fmsb")
library(fmsb)

# Create data: note in High school for several students
# Import table
data<-read.csv2(file = "Figure 3/Figure_3_percentages.csv")

rownames(data) <- c("Azores COI" , "Azores 18S", "Canaries COI" , "Canaries 18S", "Madeira COI" , "Madeira 18S", "Selvagens COI" , "Selvagens 18S"  )

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each variable to show on the plot!
data <- rbind(rep(100,12) , rep(0,12) , data)

# Color vector
colors_border=c( rgb(0.2,0.5,0.5,0.9), rgb(0.8,0.2,0.5,0.9) , rgb(0.7,0.5,0.1,0.9) )
colors_in=c( rgb(0.2,0.5,0.5,0.4), rgb(0.8,0.2,0.5,0.4) , rgb(0.7,0.5,0.1,0.4) )


# Prepare title
mytitle <- c("Azores", "Canaries", "Madeira", "Selvagens")

# Split the screen in 4 parts
par(mar=rep(0.8,4))
par(mfrow=c(2,2))

# plot with default options:
radarchart( data[c(1,2,3,4),]  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,100,25), cglwd=0.8,
            #custom labels
            vlcex=0.8,
            #title
            title=mytitle[1]
)

# plot with default options:
radarchart( data[c(1,2,5,6),]  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,100,25), cglwd=0.8,
            #custom labels
            vlcex=0.8,
            #title
            title=mytitle[2]
)

# plot with default options:
radarchart( data[c(1,2,7,8),]  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,100,25), cglwd=0.8,
            #custom labels
            vlcex=0.8,
            #title
            title=mytitle[3]
)

# plot with default options:
radarchart( data[c(1,2,9,10),]  , axistype=1 , 
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,100,25), cglwd=0.8,
            #custom labels
            vlcex=0.8,
            #title
            title=mytitle[4]
)


# Add a legend
legend(x=1, y=1, legend = rownames(data[-c(1,2),])[1:2], bty = "n", pch=20 , col=colors_in , text.col = "grey", cex=1.2, pt.cex=3)



