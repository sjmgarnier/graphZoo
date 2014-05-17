\name{graphZoo-package}
\alias{graphZoo-package}
\alias{graphZoo}
\docType{package}
\title{Graph formatting for graphzoo.tumblr.com}
\description{
This package contains a short set of functions to facilitate the formatting of 
graphs for the blog graphzoo.tumblr.com. It is unlikely to be helpful to anyone 
but the author of this blog :-)
}
\details{
\tabular{ll}{
Package: \tab graphZoo\cr
Type: \tab Package\cr
Version: \tab 0.1\cr
Date: \tab 2014-05-15\cr
License: \tab GPL v3\cr
}
}
\author{
Simon Garnier - @sjmgarnier

Maintainer: Simon Garnier <garnier@njit.edu>
}
\references{
The functions in this package require ggplot2 and gridExtra to work properly.
}
\examples{
require(ggplot2)

dat <- data.frame(x = 0:100,
                  y = 0:100 * 2 + rnorm(101, sd = 10))
g <- ggplot(data = dat,
            aes(x = x, y = y)) + 
  geom_point() + geom_smooth(method = "lm") +
  theme_graphzoo()
g <- addBanner(g, l.txt = "GRAPHZOO.TUMBLR.COM", r.txt = "SOURCE: NOSOURCE")
g
}
