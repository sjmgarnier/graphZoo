gz_banner <- function(l.txt = "", r.txt = "", bg = "grey40", 
                      family = "Avenir Next Condensed", font.size = 4, font.col = "white") {
  #mar <- convertX(unit(c(0.95, 0, 0, 0), "npc") - unit(c(0, 0, 0.5, 0.5), "lines"), "npc")
    
  banner <- ggplot(data = data.frame(x = 0, y = 0), aes(x = x, y = y)) +
    geom_blank() +
    theme_minimal() +
    theme(line = element_blank(),
          text = element_blank(),
          title = element_blank(),
          axis.ticks.length = unit(0, "null"),
          axis.ticks.margin = unit(0, "null"),
          plot.margin = unit(c(0, 0, -0.5, -0.5), "lines"),
          panel.background = element_rect(fill = bg, color = bg)) +
    coord_cartesian(xlim = c(0, 1)) +
    annotate("text", x = c(0.025, .975), y = 0, label = c(l.txt, r.txt), vjust = 0.5,
             color = font.col, hjust = c(0, 1), size = font.size, family = family)
  
  banner$theme$plot.margin <- banner$theme$plot.margin + unit(c(0.95, 0, 0, 0), "npc")
  
  banner
}