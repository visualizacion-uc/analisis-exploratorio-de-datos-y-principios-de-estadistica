rm(list = ls())
library(tidyverse)
library(viridis)
library(highcharter)
library(jbkmisc)
library(scales)
library(stringr)

knitr::opts_chunk$set(message = FALSE, warning = FALSE, echo = TRUE)
options(highcharter.theme = hc_theme_smpl(chart = list(backgroundColor = "transparent")))
theme_set(theme_jbk(base_family = NA, plot_margin = margin(10, 10, 10, 10)))

# helpers -----------------------------------------------------------------
R <- function() {  as.character(tags$span("R", style = "color:#2066B9;font-weight:500")) }