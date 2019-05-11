#' plotme2
#'
#' @title plotme2
#' @Description Used for a 2 variable ggplot
#'
#' @param plotdata data
#' @param x column number of x coordinate
#' @param y column number of y coordinate
#'
#' @return a plot
#'
#' @examples
#' plotme2(data,1,2)
#'
#' @importfrom ggplot2 ggplot
#'
#' @export plotme2

plotme2 <- function(plotdata,x,y)
{ggplot(plotdata) +
    aes(x = plotdata[, x], y = plotdata[,y]) +
    geom_point(color = "#ffffff") +
    ggtitle("") +
    theme(plot.title = element_text(hjust = 0.5)) +
    xlab(gsub(".", " ", colnames(plotdata[x]), fixed = TRUE)) +
    ylab(gsub(".", " ", colnames(plotdata[y]), fixed = TRUE))}

