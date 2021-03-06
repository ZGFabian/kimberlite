% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_kimberlite.R
\name{theme_kimberlite}
\alias{theme_kimberlite}
\title{Kimberlite theme for ggplot2}
\usage{
theme_kimberlite(family = "Monospace", size = 12)
}
\arguments{
\item{family}{Font family, default is "Monospace"}

\item{size}{Font size, defaults to 12}
}
\description{
This is a ggplot2 theme.
}
\examples{
\dontrun{
ggplot(diamonds, aes(x = carat, y = price)) +
geom_point(aes(color = clarity, size = clarity), alpha = 0.7) +
theme_kimberlite()
}
}
