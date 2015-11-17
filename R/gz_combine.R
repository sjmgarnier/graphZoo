gz_combine <- function(..., top, bottom) {
  dots <- list(...) 
  
  grid::grid.newpage()
  vp <- grid::viewport(width = 1, height = 1)
  
  for (i in 1:length(dots)) {
    dots[[i]]$theme$plot.margin <- dots[[i]]$theme$plot.margin + 
      grid::unit(c(1 - top[i], 0, bottom[i], 0), "npc")
    print(dots[[i]], vp = vp)
  }
}