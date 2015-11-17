addBanner <- function(graph, l.txt = "GRAPHZOO.TUMBLR.COM", r.txt, 
                      heights = c(1, .05), bg = "grey40", 
                      family = "Avenir Next Condensed", font.size = 4, font.col = "white") {
  require("ggplot2")
  require("gridExtra")
  
  banner <- ggplot(data = data.frame(x = 0, y = 0),
                   aes(x = x, y = y)) +
    theme_minimal() +
    theme(line = element_blank(),
          text = element_blank(),
          title = element_blank(),
          plot.margin = unit(c(0, 0, -1, -1), "lines"),
          panel.background = element_rect(fill = bg, color = bg)) +
    coord_cartesian(xlim = c(-1,1)) +
    annotate("text", x = c(-.975, .975), y = 0, 
             label = c(l.txt, r.txt),
             color = font.col, hjust = c(0, 1),
             size = font.size, family = family)
  
  arrangeGrob(graph, banner, heights = heights)
}

addTitle <- function(graph, title = "My title", n.lines = 1,
                     family = "Avenir Next", font.size = 16) {
  graph.grob <- ggplotGrob(graph + ggtitle(paste0(rep("\n", n.lines), collapse = '')))
  
  title.grob <- textGrob(label = title, x = unit(0.025, "npc"), y = unit(1 - 0.025, "npc"),
                         hjust = 0, vjust = 2,
                         gp = gpar(fontsize = font.size, fontface = "bold", 
                                   fontfamily = family))
  
  gTree(children = gList(graph.grob, title.grob))
}
