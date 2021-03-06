% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_eurostat_geospatial.R
\name{get_eurostat_geospatial}
\alias{get_eurostat_geospatial}
\title{Download Geospatial Data from GISGO}
\usage{
get_eurostat_geospatial(output_class = "sf", resolution = "60",
  nuts_level = "all", year = "2016", cache = TRUE,
  update_cache = FALSE, cache_dir = NULL)
}
\arguments{
\item{output_class}{A string. Class of object returned, 
either \code{sf} \code{simple features}, \code{df} (\code{data_frame}) or
   \code{spdf} (\code{SpatialPolygonDataFrame})}

\item{resolution}{Resolution of the geospatial data. One of
"60" (1:60million),
"20" (1:20million)
"10" (1:10million)
"03" (1:3million) or
"01" (1:1million).}

\item{nuts_level}{Level of NUTS classification of the geospatial data. One of
"0", "1", "2", "3" or "all" (mimics the original behaviour)}

\item{year}{NUTS release year. One of
"2003", "2006", "2010", "2013" or "2016"}

\item{cache}{a logical whether to do caching. Default is \code{TRUE}. Affects 
only queries from the bulk download facility.}

\item{update_cache}{a locigal whether to update cache. Can be set also with
options(eurostat_update = TRUE)}

\item{cache_dir}{a path to a cache directory. The directory have to exist.
The \code{NULL} (default) uses and creates
'eurostat' directory in the temporary directory from
\code{\link{tempdir}}. Directory can also be set with
\code{option} eurostat_cache_dir.}
}
\value{
a sf, data_frame or SpatialPolygonDataFrame.
}
\description{
Downloads either a simple features (sf), SpatialPolygonDataFrame or a
   data_frame preprocessed using
   \code{broom::tidy()}.
}
\details{
The data source URL is \url{http://ec.europa.eu/eurostat/web/gisco/geodata/reference-data/administrative-units-statistical-units}.
}
\examples{
sf <- get_eurostat_geospatial(output_class = "sf", resolution = "60", nuts_level = "all")
df <- get_eurostat_geospatial(output_class = "df", resolution = "20", nuts_level = "0")
spdf <- get_eurostat_geospatial(output_class = "spdf", resolution = "10", nuts_level = "3")
 
}
\author{
Markus Kainu <markuskainu@gmail.com>
}
