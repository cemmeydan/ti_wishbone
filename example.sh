#!/usr/local/bin/Rscript

# generate dataset with certain seed
set.seed(2)
data <- dyntoy::generate_dataset(
  id = "specific_example/wishbone",
  num_cells = 99,
  num_features = 101,
  model = "bifurcating",
  normalise = FALSE
)

# add method specific args (if needed)
data$params <- list()
data$seed <- 1

# write example dataset to file
file <- commandArgs(trailingOnly = TRUE)[[1]]
dynutils::write_h5(data, file)
