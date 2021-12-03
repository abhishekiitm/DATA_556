
# install.packages("dplyr")
library(dplyr)

get_total_tickets = function(n_movies, tickets_per_movie) {
  sum_tickets = sum(rpois(n_movies, tickets_per_movie))
  return(sum_tickets)
}

movies_per_year = 700
tickets_per_movie = 800000

n_reps = 1000000

movies_sample = rpois(n_reps, movies_per_year)

df = data.frame(movies_sample = movies_sample)
df = df %>% rowwise() %>% mutate(sum_tickets_sample = get_total_tickets(movies_sample, tickets_per_movie))

print(mean(df$sum_tickets_sample))

print(var(df$sum_tickets_sample))
