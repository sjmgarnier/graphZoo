gz_graph <- function(g, title = NULL, subtitle = NULL, 
                     banner.l = NULL, banner.r = NULL) {
  gBackground <- gz_background()
  
  gTitle <- gz_title(title, x = 0.025, y = 0.975, size = 10)
  
  gSubtitle <- gz_title(subtitle, x = 0.025, y = 0.900, size = 6, fontface = "italic")
  
  gBanner <- gz_banner(banner.l, banner.r, font.size = 6)
  
  gz_combine(gBackground, g, gTitle, gSubtitle, gBanner,
             top = c(1, 0.875, 1, 1, 0.05), 
             bottom = c(0.05, 0, 0.05, 0.05, 0))
}
