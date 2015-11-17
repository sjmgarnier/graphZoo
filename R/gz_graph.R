gz_graph <- function(g, title = NULL, subtitle = NULL, 
                     banner.l = NULL, banner.r = NULL) {
  gBackground <- gz_background()
  
  gTitle <- gz_title(title, size = 8)
  
  gSubtitle <- gz_title(subtitle, y = 0.925, size = 6, fontface = "italic")
  
  gBanner <- gz_banner(banner.l, banner.r)
  
  gz_combine(gBackground, g, gTitle, gSubtitle, gBanner,
             top = c(1, 0.9, 1, 1, 1), 
             bottom = c(0, 0.025, 0, 0, 0))
}




