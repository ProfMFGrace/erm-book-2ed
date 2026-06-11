# Chapter 6, Figure 6.1: Aggregate loss distribution for Global Manufacturing Co.
# Monte Carlo simulation of the 8-risk portfolio from Section 12 (Gaussian
# copula with lognormal marginals), 50,000 trials.

library(ggplot2)
source("second_ed/rscripts/erm_textbook_style.r")

set.seed(42)
n_trials <- 50000

# Risk register (Section 12.2): expected loss and standard deviation, $M
risk_names <- c("Credit", "FX", "Commodity", "Property",
                "Liability", "Supply chain", "Cyber", "Strategic")
mu <- c(30, 15, 20, 8, 12, 25, 10, 18)
sigma <- c(25, 30, 35, 15, 20, 40, 25, 30)

# Correlation matrix (Section 12.3)
R <- matrix(c(
  1.00, 0.30, 0.40, 0.10, 0.20, 0.35, 0.15, 0.50,
  0.30, 1.00, 0.25, 0.05, 0.10, 0.20, 0.10, 0.20,
  0.40, 0.25, 1.00, 0.10, 0.15, 0.30, 0.05, 0.35,
  0.10, 0.05, 0.10, 1.00, 0.30, 0.60, 0.20, 0.10,
  0.20, 0.10, 0.15, 0.30, 1.00, 0.25, 0.15, 0.25,
  0.35, 0.20, 0.30, 0.60, 0.25, 1.00, 0.20, 0.40,
  0.15, 0.10, 0.05, 0.20, 0.15, 0.20, 1.00, 0.20,
  0.50, 0.20, 0.35, 0.10, 0.25, 0.40, 0.20, 1.00
), nrow = 8, byrow = TRUE)

# Mixture of marginals (Section 12.5): lognormal for the most skewed
# operational risks (supply chain, cyber), gamma for the rest. Both families
# are fit to match each risk's register mean and SD exactly.
lognormal_risks <- c(6, 7)
sdlog <- sqrt(log(1 + (sigma / mu)^2))
meanlog <- log(mu) - sdlog^2 / 2
shape <- (mu / sigma)^2
rate <- mu / sigma^2

# Gaussian copula: correlated normals -> uniforms -> marginals
L <- chol(R)
Z <- matrix(rnorm(n_trials * 8), ncol = 8) %*% L
U <- pnorm(Z)
losses <- sapply(1:8, function(i) {
  if (i %in% lognormal_risks) {
    qlnorm(U[, i], meanlog[i], sdlog[i])
  } else {
    qgamma(U[, i], shape = shape[i], rate = rate[i])
  }
})
total <- rowSums(losses)

exp_loss <- mean(total)
var95 <- quantile(total, 0.95)
var99 <- quantile(total, 0.99)

cat(sprintf("Expected loss: $%.0fM\n", exp_loss))
cat(sprintf("Portfolio SD:  $%.0fM\n", sd(total)))
cat(sprintf("VaR(95%%):      $%.0fM\n", var95))
cat(sprintf("VaR(99%%):      $%.0fM\n", var99))
cat(sprintf("Max simulated: $%.0fM\n", max(total)))

plot_data <- data.frame(total = total[total <= quantile(total, 0.999)])

marker <- function(x, lab, ymax) {
  list(
    geom_vline(xintercept = x, linetype = "dashed",
               color = erm_colors$dark_gray, linewidth = 0.5),
    annotate("label", x = x, y = ymax,
             label = sprintf("%s\n$%.0fM", lab, x),
             size = 2.9, fill = erm_colors$iowa_gold,
             color = erm_colors$iowa_black)
  )
}

p <- ggplot(plot_data, aes(x = total)) +
  geom_histogram(aes(y = after_stat(density)), bins = 80,
                 fill = erm_colors$dark_gold, color = NA, alpha = 0.55) +
  geom_density(color = erm_colors$iowa_black, linewidth = 0.7)

ymax <- max(ggplot_build(p)$data[[2]]$y) * 1.04

p <- p +
  marker(exp_loss, "Expected loss", ymax) +
  marker(var95, "VaR(95%)", ymax * 0.78) +
  marker(var99, "VaR(99%)", ymax * 0.56) +
  scale_x_continuous(labels = function(x) sprintf("$%.0fM", x)) +
  labs(
    title = "GMC's Aggregate Loss Distribution",
    subtitle = "Monte Carlo simulation of the eight-risk portfolio, 50,000 trials",
    x = "Total annual loss",
    y = "Density",
    caption = "Source: Authors' simulation. Gaussian copula with gamma and lognormal marginals; top 0.1% of trials trimmed for display."
  ) +
  theme_erm_textbook(base_size = 11) +
  theme(axis.text.y = element_blank())

ggsave("second_ed/rscripts/chapter6/c6_aggregate_loss.png",
       plot = p, width = 6.5, height = 4, dpi = 300)
