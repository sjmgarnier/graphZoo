gz_banner <- function(l.txt = "", r.txt = "", bg = "grey40", height = 0.05,
                      family = "Open Sans", font.size = 4, font.col = "white") {
  banner <- ggplot2::ggplot(data = data.frame(x = 0, y = 0), 
                            ggplot2::aes(x = x, y = y)) +
    ggplot2::geom_blank() +
    ggplot2::theme_minimal() +
    ggplot2::theme(line = ggplot2::element_blank(),
          text = ggplot2::element_blank(),
          title = ggplot2::element_blank(),
          axis.ticks.length = grid::unit(0, "null"),
          axis.ticks.margin = grid::unit(0, "null"),
          plot.margin = grid::unit(c(0, 0, -0.5, -0.5), "lines"),
          panel.background = ggplot2::element_rect(fill = bg, color = bg)) +
    ggplot2::coord_cartesian(xlim = c(0, 1)) +
    ggplot2::annotate("text", x = c(0.025, .975), y = 0, label = c(l.txt, r.txt), 
                      vjust = 0.5, color = font.col, hjust = c(0, 1), 
                      size = font.size, family = family)
  
  banner$theme$plot.margin <- banner$theme$plot.margin + 
    grid::unit(c(1 - height, 0, 0, 0), "npc")
  
  banner
}