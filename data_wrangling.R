library(tidyverse)

nba_data <- read.csv("data/nbaallelo.csv")

nba <- nba_data %>%
  select(year_id, is_playoffs, fran_id, pts, elo_i, opp_pts, game_location, game_result) %>%
  mutate(decade = case_when(year_id < 1950 ~ "1940",
                            year_id < 1960 ~ "1950",
                            year_id < 1970 ~ "1960",
                            year_id < 1980 ~ "1970",
                            year_id < 1990 ~ "1980",
                            year_id < 2000 ~ "1990",
                            year_id < 2010 ~ "2000",
                            year_id < 2020 ~ "2010"))

vis_decades <- nba %>%
  group_by(decade) %>%
  summarize(mean_pts = mean(pts),
            count = n())
