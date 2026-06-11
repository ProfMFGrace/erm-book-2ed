library(ggplot2)

erm_colors <- list(
  iowa_black = "#000000",
  iowa_gold = "#FFCD00",
  dark_gold = "#B38600",
  dark_gray = "#3C3C3C",
  mid_gray = "#777777",
  light_gray = "#E6E6E6",
  background = "#FBFAF5"
)

theme_erm_textbook <- function(base_size = 12, base_family = "") {
  theme_minimal(base_size = base_size, base_family = base_family) +
    theme(
      plot.background = element_rect(fill = erm_colors$background, color = NA),
      panel.background = element_rect(fill = erm_colors$background, color = NA),
      panel.grid.major = element_line(color = erm_colors$light_gray, linewidth = 0.25),
      panel.grid.minor = element_blank(),
      axis.title = element_text(color = erm_colors$iowa_black, face = "bold"),
      axis.text = element_text(color = erm_colors$dark_gray),
      plot.title = element_text(
        color = erm_colors$iowa_black,
        face = "bold",
        size = base_size + 4,
        margin = margin(b = 4)
      ),
      plot.subtitle = element_text(
        color = erm_colors$dark_gray,
        size = base_size + 1,
        margin = margin(b = 10)
      ),
      plot.caption = element_text(
        color = erm_colors$mid_gray,
        size = base_size - 2,
        hjust = 0,
        margin = margin(t = 10)
      ),
      legend.position = "top",
      legend.title = element_blank(),
      legend.text = element_text(color = erm_colors$dark_gray),
      plot.margin = margin(12, 16, 12, 16)
    )
}

scale_color_erm_iowa <- function(...) {
  scale_color_manual(
    values = c(
      "Johnson & Johnson" = erm_colors$iowa_black,
      "S&P 500" = erm_colors$dark_gold
    ),
    ...
  )
}
