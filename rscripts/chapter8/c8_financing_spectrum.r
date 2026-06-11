# Figure 8.1: The risk financing spectrum
# Schematic: as the organization moves from pure retention toward full
# transfer, the explicit cost of risk financing rises while retained
# volatility falls. Positions and index values are illustrative, not data.

library(ggplot2)
library(dplyr)

# Run from the "ERM Book" folder (parent of second_ed), like the other
# chapter scripts.
source("second_ed/rscripts/erm_textbook_style.r")
out_dir <- "second_ed/rscripts/chapter8"

mechanisms <- c(
  "Pure\nretention",
  "Small\ndeductibles",
  "Large\ndeductibles / SIRs",
  "Self-insurance\n(funded)",
  "Captive\ninsurance",
  "Loss-sensitive\ninsurance",
  "Guaranteed-cost\ninsurance",
  "ART / cat\nbonds (tail)"
)

spectrum <- tibble(
  pos = 1:8,
  mechanism = factor(mechanisms, levels = mechanisms),
  cost = c(5, 15, 30, 40, 50, 65, 85, 95),
  volatility = c(100, 88, 65, 52, 45, 30, 8, 12)
) |>
  tidyr::pivot_longer(c(cost, volatility),
    names_to = "series", values_to = "index"
  ) |>
  mutate(series = recode(series,
    cost = "Explicit financing cost (premiums, fees, capital charges)",
    volatility = "Retained loss volatility"
  ))

p <- ggplot(spectrum, aes(pos, index, color = series, linetype = series)) +
  geom_line(linewidth = 1.1) +
  geom_point(size = 2.4) +
  scale_color_manual(values = c(
    "Explicit financing cost (premiums, fees, capital charges)" = erm_colors$dark_gold,
    "Retained loss volatility" = erm_colors$iowa_black
  )) +
  scale_linetype_manual(values = c(
    "Explicit financing cost (premiums, fees, capital charges)" = "solid",
    "Retained loss volatility" = "longdash"
  )) +
  scale_x_continuous(breaks = 1:8, labels = mechanisms) +
  scale_y_continuous(limits = c(0, 105), breaks = seq(0, 100, 25)) +
  annotate("text",
    x = 1.4, y = 4, label = "RETENTION", fontface = "bold",
    size = 3.4, color = erm_colors$mid_gray
  ) +
  annotate("text",
    x = 4.5, y = 4, label = "HYBRID STRUCTURES", fontface = "bold",
    size = 3.4, color = erm_colors$mid_gray
  ) +
  annotate("text",
    x = 7.6, y = 4, label = "TRANSFER", fontface = "bold",
    size = 3.4, color = erm_colors$mid_gray
  ) +
  labs(
    title = "The Risk Financing Spectrum",
    subtitle = "Moving from retention toward transfer trades higher explicit cost for lower retained volatility",
    x = NULL,
    y = "Index (illustrative, 0\u2013100)",
    caption = "Schematic illustration. ART instruments transfer extreme tail layers only, so some\nretained volatility remains below the attachment point."
  ) +
  theme_erm_textbook(base_size = 11) +
  theme(axis.text.x = element_text(size = 8.5, lineheight = 0.9))

ggsave(
  file.path(out_dir, "c8_financing_spectrum.png"),
  p,
  width = 9, height = 5.2, dpi = 300
)

cat("Figure written to", file.path(out_dir, "c8_financing_spectrum.png"), "\n")
