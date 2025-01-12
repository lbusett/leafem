% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extent.R
\name{addExtent}
\alias{addExtent}
\title{Add extent/bbox of spatial objects to a leaflet map}
\usage{
addExtent(map, data, ...)
}
\arguments{
\item{map}{A \code{leaflet} or \code{mapview} map.}

\item{data}{A \code{sf} object to be added to the \code{map}.}

\item{...}{additional arguments passed on to \code{\link{addFeatures}}}
}
\description{
This function adds the bounding box of a spatial object to a leaflet or mapview map.
}
\examples{
library(sf)
library(leaflet)
indata <- sf::st_read(system.file("shape/nc.shp", package="sf"))

# Usage in leaflet
leaflet() \%>\%
  addProviderTiles("OpenStreetMap") \%>\%
  addExtent(indata)

leaflet(indata) \%>\%
  addProviderTiles("OpenStreetMap") \%>\%
  addExtent()
}
