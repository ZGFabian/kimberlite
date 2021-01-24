#' kimberlite palette with ramped colours
#'
#' @param palette Choose from 'kimberlite_palettes' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @examples
#' \dontrun{
#' library(scales)
#' show_col(kimberlite_pal()(10))
#'
#' filled.contour(volcano,color.palette = kimberlite_pal(), asp=1)
#' }
#' @export
kimberlite_pal <- function(palette="coolors", alpha = 1, reverse = FALSE) {
    pal <- kimberlite_palettes[[palette]]
    if (reverse){
        pal <- rev(pal)
    }
    return(colorRampPalette(pal, alpha))
}

#' Setup colour palette for ggplot2
#'
#' @rdname scale_color_kimberlite
#'
#' @param palette Choose from 'kimberlite_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @inheritParams viridis::scale_color_viridis
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = factor(cyl))) +
#'   scale_colour_kimberlite(palette="coolors")
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = hp)) +
#'   scale_colour_kimberlite(palette="eureka", discrete = FALSE)
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_kimberlite(palette="orange_river")
#' ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_kimberlite()
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_kimberlite <- function(..., palette="coolors",
                              discrete = TRUE, alpha = 1, reverse = FALSE) {
   if (discrete) {
       discrete_scale("colour", "kimberlite", palette=kimberlite_pal(palette, alpha = alpha, reverse = reverse))
   } else {
       scale_color_gradientn(colours = kimberlite_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
   }
    #scale_colour_manual(values=kimberlite_palettes[[palette]])
}

#' @rdname scale_color_kimberlite
#' @export
scale_colour_kimberlite <- scale_color_kimberlite

#' #' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'kimberlite_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams kimberlite_pal
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_kimberlite <- function(..., palette="coolors",
                              discrete = TRUE, alpha=1, reverse = TRUE) {
    if (discrete) {
        discrete_scale("fill", "kimberlite", palette=kimberlite_pal(palette, alpha = alpha, reverse = reverse))
    }
    else {
        scale_fill_gradientn(colours = kimberlite_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
    }
}
