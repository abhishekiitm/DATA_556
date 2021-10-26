
sample_average_heights = function(n, mu, sigma){
  return( mean(rnorm(n, mu, sigma)) )
}

n_reps = 10^6

X = replicate(n_reps, sample_average_heights(1, 69.1, 2.9))
Y = replicate(n_reps, sample_average_heights(1, 63.7, 2.7))

print(mean(X-Y))
print(sd(X-Y))

pnorm(0, -5.4, sqrt(2.9*2.9+2.7*2.7))