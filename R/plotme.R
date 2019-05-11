#' plotme
#'
#' @title plotme
#'
#' @Description Used for a 3 variable ggplot
#'
#' @param plotdata data
#' @param x column number of x coordinate
#' @param y column number of y coordinate
#' @param z column number of group category
#'
#' @return a plot
#'
#' @examples
#' plotme(data,1,2,5)
#'
#' @importfrom ggplot2 ggplot
#'
#' @export plotme

plotme <- function(plotdata,x,y,z)
             {ggplot(plotdata) +
               aes(x = plotdata[, x], y = plotdata[,y], col = plotdata[,z]) +
               geom_point() +
               ggtitle("") +
               theme(plot.title = element_text(hjust = 0.5), legend.position = "bottom") +
               xlab(gsub(".", " ", colnames(plotdata[x]), fixed = TRUE)) +
               labs(color=colnames(plotdata)[z]) +
               ylab(gsub(".", " ", colnames(plotdata[y]), fixed = TRUE)) +
               scale_color_manual(values=c("#f15a34", "blue", "#56B4E9"))
  }
