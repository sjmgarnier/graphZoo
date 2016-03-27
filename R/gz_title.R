gz_title <- function(label, x = 0.025, y = 0.975, hjust = 0, vjust = 1,  
                     fontface = "bold", family = "Open Sans", size = 6) {
  ggplot2::ggplot(data = data.frame(x = 0, y = 0), 
                  ggplot2::aes(x = x, y = y)) +
    ggplot2::geom_blank() +
    ggplot2::theme(line = ggplot2::element_blank(),
                   text = ggplot2::element_blank(),
                   title = ggplot2::element_blank(),
                   axis.ticks.length = grid::unit(0, "null"),
                   axis.text = ggplot2::element_text(margin = grid::unit(0, "null")),
                   plot.margin = grid::unit(c(0, 0, 0, 0), "npc"),
                   panel.margin = grid::unit(c(0, 0, 0, 0), "npc"),
                   panel.background = ggplot2::element_rect(fill = "#FFFFFF00", color = "#FFFFFF00"),
                   plot.background = ggplot2::element_rect(fill = "#FFFFFF00", color = "#FFFFFF00")) +
    ggplot2::coord_cartesian(xlim = c(0, 1), ylim = c(0, 1), expand = FALSE) +
    ggplot2::annotate("text", x = x, y = y, label = label, hjust = hjust, vjust = vjust, 
                      fontface = fontface, family = family, size = size)
}