gz_banner <- function(l.txt = "", r.txt = "", bg = "grey40", margin = 0.025,
                      family = "Open Sans", font.size = 4, font.col = "white") {
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
                   panel.background = ggplot2::element_rect(fill = bg, color = bg),
                   plot.background = ggplot2::element_rect(fill = "#FFFFFF00", color = "#FFFFFF00")) +
    ggplot2::coord_cartesian(xlim = c(0, 1), expand = FALSE) +
    ggplot2::annotate("text", x = c(0 + margin, 1 - margin), y = 0, label = c(l.txt, r.txt), 
                      vjust = 0.5, color = font.col, hjust = c(0, 1), 
                      size = font.size, family = family)
}
