#' kimberlite palette with ramped (interpolated) colours
#'
#' @param palette Choose from 'kimberlite_palettes' list
#'
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @param ... Other arguments passed to colorRampPalette()
#'
#' @examples
#' \dontrun{
#' library(scales)
#' show_col(kimberlite_pal()(10))
#'
#' filled.contour(volcano,color.palette = kimberlite_pal(), asp=1)
#' }
#' @export
kimberlite_pal <- function(palette="coolors", reverse = FALSE, ...) {
    pal <- kimberlite_palettes[[palette]]
    if (reverse){
        pal <- rev(pal)
    }
    return(colorRampPalette(pal))
}

#' Setup colour palette for ggplot2
#'
#' @rdname scale_color_kimberlite
#'
#' @param palette Choose from 'kimberlite_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
# #' @inheritParams viridis::scale_color_viridis
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(kimberlite)
#' library(ggplot2)
#' ggplot(diamonds, aes(x=carat, y=price, color = clarity)) +
#'   geom_point() +
#'   scale_color_kimberlite() +
#'   labs(title = "default: coolors")
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_kimberlite <- function(palette="coolors", discrete = TRUE, reverse = FALSE, ...) {
   if (discrete) {
       discrete_scale(aesthetics = "colour", scale_name = "kimberlite", palette=kimberlite_pal(palette, reverse = reverse))
   }
   else {
      scale_color_gradientn(colours = kimberlite_pal(palette, reverse = reverse, ...)(256),
                           values = c(1.0,0.8,0.6,0.4,0.2,0))
   }
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
