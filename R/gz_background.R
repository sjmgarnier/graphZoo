gz_background <- function(bg = "#F0F0F0") {
  ggplot2::ggplot(data = data.frame(x = 0, y = 0), 
                  ggplot2::aes(x = x, y = y)) +
    ggplot2::geom_blank() +
    ggplot2::theme_minimal() +
    ggplot2::theme(line = ggplot2::element_blank(),
                   text = ggplot2::element_blank(),
                   title = ggplot2::element_blank(),
                   axis.ticks.length = grid::unit(0, "null"),
                   axis.text = ggplot2::element_text(margin = grid::unit(0, "null")),
                   plot.margin = grid::unit(c(0, 0, 0, 0), "lines"),
                   panel.background = ggplot2::element_rect(fill = bg, color = bg)) +
    ggplot2::coord_cartesian(xlim = c(0, 1))
}