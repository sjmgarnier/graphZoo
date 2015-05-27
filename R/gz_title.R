gz_title <- function(label, x = 0.025, y = 0.975, hjust = 0, vjust = 1, 
                     fontface = "bold", family = "Avenir Next", size = 6) {
  ggplot(data = data.frame(x = 0, y = 0), aes(x = x, y = y)) +
    geom_blank() +
    theme_nothing() +
    coord_cartesian(xlim = c(0, 1), ylim = c(0, 1)) +
    annotate("text", x = x, y = y, label = label, hjust = hjust, vjust = vjust, 
             fontface = fontface, family = family, size = size)
}