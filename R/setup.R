rm(list = ls())
library(tidyverse)
library(highcharter)
library(jbkmisc)

knitr::opts_chunk$set(message = FALSE, warning = FALSE, echo = TRUE)
options(highcharter.theme = hc_theme_smpl(chart = list(backgroundColor = "transparent")))

# remove temporal widgets
file.remove(setdiff(dir(pattern = ".html"), "index.html"))

# helpers -----------------------------------------------------------------
R <- function() {  as.character(tags$span("R", style = "color:#2066B9;font-weight:500")) }