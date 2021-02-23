#' Kimberlite theme for ggplot2
#'
#' This is a ggplot2 theme.

#' @param size Font size, defaults to 12
#' @param family Font family, default is "Monospace"
#' @importFrom ggplot2 '%+replace%'
#' @export
#' @examples
#' \dontrun{
#' ggplot(diamonds, aes(x = carat, y = price)) +
#' geom_point(aes(color = clarity, size = clarity), alpha = 0.7) +
#' theme_kimberlite()
#' }

theme_kimberlite <- function(family = "Monospace", size = 12) {
    ggplot2::theme_bw() %+replace%
    ggplot2::theme(
      text = ggplot2::element_text(family = family, size = size),
      panel.grid.major  = ggplot2::element_line(color = "white"),
      panel.background = ggplot2::element_rect(fill = "lightgrey"),
      panel.border = ggplot2::element_rect(color = "lightgrey", fill = NA),
      title = ggplot2::element_text(color = "#005577"),
      axis.line = ggplot2::element_line(color = "lightgrey"),
      axis.ticks = ggplot2::element_line(color = "lightgrey"),
      axis.text = ggplot2::element_text(color = "#005577"),
      axis.title = ggplot2::element_text(face = "bold", size = 12, color = "#005577"),
      strip.background = ggplot2::element_rect(color = "#005577", fill = "#005577"),
      strip.text.x = ggplot2::element_text(size = 11, color = "white"),
      legend.position = "top"
      )
}
