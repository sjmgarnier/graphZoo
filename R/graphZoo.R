theme_graphzoo <- function(base_size = 24) {
  require("ggplot2")
  require("gridExtra")
  
  theme_minimal(base_size = base_size) +
    theme(panel.grid.major = element_line(color = "#00000050"),
          panel.grid.minor = element_line(color = "#00000012", linetype = 2),
          axis.title.y = element_text(vjust = 0.4),
          axis.title.x = element_text(vjust = 0),
          plot.background = element_rect(fill = "#F0F0F0", color = "#F0F0F0"),
          text = element_text(family = "Courier"),
          plot.margin = unit(rep(1, 4), "lines")) 
}

addBanner <- function(graph, l.txt = "GRAPHZOO.TUMBLR.COM", r.txt, 
                      heights = c(1, .05), bg = "grey40", 
                      font.size = 4, font.col = "white") {
  require("ggplot2")
  require("gridExtra")
  
  banner <- ggplot(data = data.frame(x = 0, y = 0),
                   aes(x = x, y = y)) +
    theme_minimal() +
    theme(line = element_blank(),
          text = element_blank(),
          title = element_blank(),
          plot.margin = unit(c(0,0,-.9,-.9), "lines"),
          panel.background = element_rect(fill = bg, color = bg)) +
    coord_cartesian(xlim = c(-1,1)) +
    annotate("text", x = c(-.975, .975), y = 0, 
             label = c(l.txt, r.txt),
             color = font.col, hjust = c(0, 1),
             size = font.size, family = "Avenir Next Condensed")
  
  arrangeGrob(graph, banner, heights = heights)
}
