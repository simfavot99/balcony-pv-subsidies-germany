# Install and load all packages used across the project.
# Run once after cloning: source("packages.R")

if (!requireNamespace("pacman", quietly = TRUE)) install.packages("pacman")

pacman::p_load(
  # Data wrangling
  tidyverse,
  arrow,
  here,
  lubridate,

  # Tables & output
  knitr,
  kableExtra,
  modelsummary,
  gt,

  # DiD estimators
  did,               # Callaway & Sant'Anna
  DIDmultiplegt,     # de Chaisemartin & D'Haultfoeuille (static)
  DIDmultiplegtDYN,  # de Chaisemartin & D'Haultfoeuille (dynamic)
  TwoWayFEWeights,   # negative-weights diagnostic
  fect,              # counterfactual estimator / carryover test

  # Maps & visualisation
  sf,
  leaflet,
  ggiraph,
  ggplot2
)
