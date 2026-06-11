library(dplyr)
library(lubridate)
library(ggplot2)
library(tidyr)
library(readxl)
source("second_ed/rscripts/erm_textbook_style.r")

p_jnj <- read_excel("second_ed/rscripts/chapter1/jnj_tylenol/JNJ_SP500.xlsx",
sheet="JNJ")  %>% 
transmute(
  date = lubridate::as_date(Date),
  series = "Johnson & Johnson",
  price = Close
)



p_sp500 <- read_excel("second_ed/rscripts/chapter1/jnj_tylenol/JNJ_SP500.xlsx",
sheet="S&P500") %>%
transmute(
  date = lubridate::as_date(SP500),
  series = "S&P 500",
  price = `S&P500 Close`
)


prices <- bind_rows(p_jnj, p_sp500)
event_date <- as.Date("1982-09-29")
end_date <- as.Date("1982-12-31")

plot_data <- prices %>%
  filter(date >= event_date - months(3),
         date <= end_date) %>%
  arrange(series, date) %>%
  group_by(series) %>%
  mutate(
    base_price = price[max(which(date < event_date))],
    rel_value = price / base_price
  ) %>%
  ungroup()

ggplot(plot_data, aes(x = date, y = rel_value, color = series)) +
  geom_hline(yintercept = 1, color = erm_colors$mid_gray, linewidth = 0.3) +
  geom_line(linewidth = 1.1) +
  geom_vline(xintercept = event_date,
             linetype = "dashed", color = erm_colors$dark_gray) +
  annotate("label",
          x = event_date - days(4),
           y = max(plot_data$rel_value, na.rm = TRUE),
           label = "Tylenol murders\nSept 29, 1982",
          hjust = 1, vjust = 1, size = 3,
           fill = erm_colors$iowa_gold,
           color = erm_colors$iowa_black) +
  scale_color_erm_iowa() +
  scale_y_continuous(labels = function(x) sprintf("%.2f", x)) +
  labs(
    title = "J&J and the S&P 500",
    subtitle = "Tylenol crisis window, indexed to the pre-crisis trading day",
    x = "Date",
    y = "Price index",
    caption = "Source: JNJ_SP500.xlsx. Historical values from Google Finance."
  ) +
  theme_erm_textbook(base_size = 11)
ggsave("second_ed/rscripts/chapter1/jnj_tylenol/c1_jnjplot.png", width = 6.5, height = 4, dpi = 300)

