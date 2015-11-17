theme_graphzoo <- function(base_size = 24, family = "Open Sans") {
  ggplot2::theme_minimal(base_size = base_size) +
    ggplot2::theme(panel.grid.major = ggplot2::element_line(color = "#00000050"),
          panel.grid.minor = ggplot2::element_line(color = "#00000012", linetype = 2),
          axis.title.x = ggplot2::element_text(vjust = -0.5),
          axis.title.y = ggplot2::element_text(vjust = 0.9),
          plot.background = ggplot2::element_rect(fill = "#F0F0F0", color = "#F0F0F0"),
          text = ggplot2::element_text(family = family),
          plot.margin = grid::unit(c(0.05, 0.025, 0.075, 0.025), "npc")) 
}
