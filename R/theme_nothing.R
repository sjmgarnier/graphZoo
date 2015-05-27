theme_nothing <- function (base_size = 12, legend = FALSE) {
  if (legend) {
    return(theme(axis.text = element_blank(), axis.title = element_blank(), 
                 panel.background = element_blank(), panel.grid.major = element_blank(), 
                 panel.grid.minor = element_blank(), axis.ticks.length = unit(0, 
                                                                              "cm"), axis.ticks.margin = unit(0.01, "cm"), 
                 panel.margin = unit(0, "lines"), plot.margin = unit(c(0, 
                                                                       0, -0.5, -0.5), "lines"), complete = TRUE))
  }
  else {
    return(theme(line = element_blank(), rect = element_blank(), 
                 text = element_blank(), axis.ticks.length = unit(0, 
                                                                  "cm"), axis.ticks.margin = unit(0.01, "cm"), 
                 legend.position = "none", panel.margin = unit(0, 
                                                               "lines"), plot.margin = unit(c(0, 0, -0.5, -0.5), 
                                                                                            "lines"), complete = TRUE))
  }
}