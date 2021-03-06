% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cubeView.R
\name{cubeView}
\alias{cubeView}
\title{View a RasterStack or RasterBrick as 3-dimensional data cube.}
\usage{
cubeView(x, at, col.regions = mapviewGetOption("raster.palette"))
}
\arguments{
\item{x}{a RasterStack or RasterBrick}

\item{at}{the breakpoints used for the visualisation. See
\code{\link{levelplot}} for details.}

\item{col.regions}{color (palette).See \code{\link{levelplot}} for details.}
}
\description{
Create a 3D data cube from a RasterStack or RasterBrick. The cube can be
freely rotated so that Hovmoller views of x - z and y - z are possible.
}
\details{
The visible layers are alterable by keys: \cr
x-axis: LEFT / RIGHT arrow key \cr
y-axis: DOWN / UP arrow key \cr
z-axis: PAGE_DOWN / PAGE_UP key \cr

Note: Because of key focus issues key-press-events are not always
recognised within RStudio at Windows. In this case open the view in
a web-browser (RStudio button: "show in new window").

Press and hold left mouse-button to rotate the cube.
Press and hold right mouse-button to move the cube.
Spin mouse-wheel or press and hold middle mouse-button and
move mouse down/up to zoom the cube.
}
\examples{
\dontrun{
library(raster)

kili_data <- system.file("extdata", "kiliNDVI.tif", package = "mapview")
kiliNDVI <- stack(kili_data)

cubeView(kiliNDVI)

library(RColorBrewer)
clr <- colorRampPalette(brewer.pal(9, "BrBG"))
cubeView(kiliNDVI, at = seq(-0.15, 0.95, 0.1), col.regions = clr)
}

}
\author{
Stephan Woellauer and Tim Appelhans
}

