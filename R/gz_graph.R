gz_graph <- function(g, title = NULL, subtitle = NULL, cex.title = 1, 
                     banner.l = NULL, banner.r = NULL, cex.banner = 1) {
  mar <- convertX(g$theme$plot.margin, "npc")
  mar <- as.numeric(mar)[4]
  
  if (!is.null(title)) {
    title <- gz_title(title, x = mar, y = 1 - mar, hjust = 0, vjust = 1, 
                      fontface = "bold", family = "Avenir Next", size = 5 * cex.title)
    
    g$theme$plot.margin <- g$theme$plot.margin + unit(c(1, 0, 0, 0) * cex.title, "lines")
  }
  
  if (!is.null(subtitle)) {
    subtitle <- gz_title(subtitle, x = mar, y = 1 - mar, hjust = 0, vjust = 1, 
                         fontface = "italic", family = "Avenir Next", size = 3 * cex.title)
    
    subtitle$theme$plot.margin <- subtitle$theme$plot.margin + unit(c(1, 0, 0, 0) * cex.title, "lines")
    
    g$theme$plot.margin <- g$theme$plot.margin + unit(c(1.5, 0, 0, 0) * cex.title, "lines")
  }
  
  if (!is.null(banner.l) | !is.null(banner.r)) {
    if (is.null(banner.l)) banner.l = ""
    if (is.null(banner.r)) banner.r = ""
    
    banner <- gz_banner(l.txt = banner.l, r.txt = banner.r, font.size = 5 * cex.banner)
    
    g$theme$plot.margin <- g$theme$plot.margin + unit(c(0, 0, 1, 0) * cex.banner, "lines")
  }
  
  vp <- viewport(width = 1, height = 1)
  print(g, vp = vp)
  
  if (!is.null(title)) print(title, vp = vp)
  if (!is.null(subtitle)) print(subtitle, vp = vp)
  if (exists("banner")) print(banner, vp = vp)
}




