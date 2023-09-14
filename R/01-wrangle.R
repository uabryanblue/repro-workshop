# put in a descriptive header

# put all packages at the top
library(readr)
library(lme4)
library(dplyr)

# Read in the data -----
## Read the csv file ----
gapminder <- read_csv("data/gapminder_data.csv")
head(gapminder)
str(gapminder)


# fit model ---------------------------------------------------------------



# wrangle data ------------------------------------------------------------
# use naming scheme to keep names of objects together
# here all start with "gap" so context sensitive help shows them together
gap_1980s <- filter(gapminder, year >= 1980, year <1990)
gap_big <- filter(gapminder, pop > 100000)


# Write data --------------------------------------------------------------


write_csv(gap_1980s, "data_clean/gapminder_1980s.csv")


# style -------------------------------------------------------------------
# use code, reformat code and reindent code to help clean things up
continents <- c("africa", "americas", "asia", "europe", "oceania")
filepaths <- vapply(
  paste0("mini-gapminder-", continents, ".csv"),
  FUN = readr_example,
  FUN.VALUE = character(1)
)
require("here")
library("here")
here("R", "gapminder_DATA.csv")


