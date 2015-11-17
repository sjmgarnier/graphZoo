theme_nothing <- function(base_size = 12, legend = FALSE) {
  if (legend) {
    return(ggplot2::theme(axis.text = ggplot2::element_blank(), 
                 axis.title = ggplot2::element_blank(), 
                 panel.background = ggplot2::element_blank(), 
                 panel.grid.major = ggplot2::element_blank(), 
                 panel.grid.minor = ggplot2::element_blank(), 
                 axis.ticks.length = grid::unit(0, "cm"), 
                 axis.ticks.margin = grid::unit(0.01, "cm"), 
                 panel.margin = grid::unit(0, "lines"), 
                 plot.margin = grid::unit(c(0, 0, -0.5, -0.5), "lines"), 
                 complete = TRUE))
  }
  else {
    return(ggplot2::theme(line = ggplot2::element_blank(), 
                 rect = ggplot2::element_blank(), 
                 text = ggplot2::element_blank(), 
                 axis.ticks.length = grid::unit(0, "cm"), 
                 axis.ticks.margin = grid::unit(0.01, "cm"), 
                 legend.position = "none", 
                 panel.margin = grid::unit(0, "lines"), 
                 plot.margin = grid::unit(c(0, 0, -0.5, -0.5), "lines"), 
                 complete = TRUE))
  }
}