rm(list = ls())
library(tidyverse)
library(viridis)
library(highcharter)
library(jbkmisc)
library(scales)
library(stringr)

knitr::opts_chunk$set(
  message = FALSE,
  warning = FALSE,
  echo = TRUE,
  dev = "svg"
  )
options(highcharter.theme = hc_theme_smpl(chart = list(backgroundColor = "transparent")))


main_color <- "#E53935"

# ggplot ------------------------------------------------------------------
theme_set(theme_jbk(base_family = "Roboto Condensed", plot_margin = margin(10, 10, 10, 10)))

update_geom_defaults("line",  list(colour = main_color, size = 1.05))
update_geom_defaults("point", list(colour = main_color, size = 3))
update_geom_defaults("bar",   list(fill = main_color))
update_geom_defaults("text",  list(size = 4, colour = "#666666"))

theme_null <- function(...) {
  theme(...,
        axis.line=element_blank(),
        axis.text.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),
        legend.position = "none",
        panel.background=element_blank(),
        panel.border=element_blank(),
        panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),
        plot.background=element_blank())
}


# helpers -----------------------------------------------------------------
# sw <- function(w, f) {
#   # file.exists(f) break
#   htmlwidgets::saveWidget(widget = w, file = f, libdir = "index_files/", selfcontained = FALSE, background = "transparent")
# }

# vis-dist ----------------------------------------------------------------
# df <- data_frame(
#   name = sample(head(LETTERS, 5), size = 200, replace = TRUE, prob = (1:5)^(1.2))
# ) %>% 
#   count(name) %>% 
#   rename(y = n) %>% 
#   mutate(color = colorize(name, rev(viridis(5))))
# df
# 
# set.seed(123)
# 
# x <- c(rgamma(6000, 5, 5), rnorm(3000, 3, 1)) %>% 
#   abs() %>% 
#   { .[. < quantile(., .999)]}
# 
# hc <- hchart(x, color = "#21908C") %>% 
#   hc_add_series(
#     data = df, type = "pie", center = c('70%', '50%'), size = 350,
#     dataLabels = list(enabled = FALSE), 
#     innerSize =  '60%', borderWidth = 0
#   ) %>% 
#   hc_plotOptions(
#     series = list(showInLegend = FALSE)
#   ) %>% 
#   hc_add_theme(
#     hc_theme_merge(
#       hc_theme_null(), hc_theme_flatdark()
#     )
#   ) 
# 
# hc
#   
# sw(hc, "vis-dis.html")