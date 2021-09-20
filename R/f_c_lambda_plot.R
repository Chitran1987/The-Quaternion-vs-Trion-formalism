rm(list=ls())
library(plotly)
struc <- function(c, L){
  f <- (c^2)*(L^2) - (c^2) + 1
  return(f)
}
c <- L <- seq(-4,4, by=0.01)
z <-outer(c, L, struc)
#persp(c, L, z)
###using the plotly library
fig <- plot_ly(x = ~c, y= ~L, z= ~z, type = 'surface')
fig