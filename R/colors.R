#' Kimberlite Colour Palettes
#'
#'A collection of colour palettes inspired by volcanos, diamonds and kimberlites:
#' carbonado
#' coolors
#' orange_river
#' eureka
#'
#'@examples
#'
#' # Make an x-y plot using the eureka palette
#' \dontrun{
#' library(tidyverse)
#' df <- data.frame(x = rnorm(100, 0, 20),
#'           y = rnorm(100, 0, 20),
#'           cl = sample(letters[1:8], 100, replace=TRUE))
#' ggplot(df, aes(x, y, colour=cl, shape=cl)) +
#'   geom_point(size=4) + scale_colour_kimberlite(palette = "eureka") +
#'   theme_bw() + theme(aspect.ratio=1)
#'
#' # Make a histogram using the Orange River palette
#' ggplot(df, aes(x, fill=cl)) + geom_histogram() +
#'   scale_fill_kimberlite(palette="orange_river")
#' }
#' \dontrun{
#'   data(elev)
#'   library(elevatr)
#'   library(raster)
#'   library(kimberlite)
#'   colpal <- kimberlite_pal()(150)
#'   ex <- extent(110, 155, -45, -10)
#'   elev <- raster::crop(elev, ex)
#'   elev[elev < 0] <- NA
#'   topo <- list(x = xFromCol(elev), y = rev(yFromRow(elev)),
#'                z = t(as.matrix(elev))[, nrow(elev):1])
#'                par(mar = rep(0, 4), bg = "#444444")
#'                image(topo, useRaster = TRUE, col = colpal,
#'                      axes = FALSE, xlab = "", ylab = "",
#'                            asp = cos(27.5 * pi/180))
#' }
#' @export
kimberlite_palettes <- list(
    ## carbonado - a grey palette
    ## note: carbonado is the name of black diamonds
    carbonado = c(
        "#1a1a1a", #
        "#292929", #gm
        "#474747", #davys-grey
        "#5c5c5c", #davys-grey-2
        "#858585", #battleship-grey
        "#a3a3a3", #quick-silver
        "#c2c2c2", #silver
        "#dcdcdc"  #gainsboro
    ),

    ## Cool, like coolors.io!
    coolors = c(
       "#005577", #blue-sapphire
       "#02441d", #forest-green-traditional
       "#ffcc55", #maize-crayola
       "#f47735", #orange-crayola
       "#972d15"  #kobe
    ),

    ## 1866: Eureka! Erasmus Jacobs, a 15-year-old farmer's son, finds Africa's first
    ## authenticated diamond near the Orange River, Hopetown.
    ## https://en.wikipedia.org/wiki/Orange_River#/media/File:OrangeRiverUpington.jpg
    orange_river = c(
        "#5A6775",
        "#6F7272",
        "#88817b",
        "#c3b9b0",
        "#8C7561",
        "#9E5629",
        "#C36924",
        "#EFA53F"
    ),

    ## https://en.wikipedia.org/wiki/Eureka_Diamond
    ## https://en.wikipedia.org/wiki/Eureka_Diamond#/media/File:EurekaDiamond.jpg
    ## https://coolors.co
    eureka = c(
        "#454426", #rifle-green
        "#767143", #spanish-bistre
        "#9b802e", #metallic-sunburst
        "#eedf69", #straw
        "#1d2228", #eerie-black
        "#4a4b4c", #jet
        "#3c4648", #charcoal
        "#344457"  #charcoal-2
   ))
