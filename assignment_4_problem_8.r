n_reps = 10^7

U = runif(n_reps)
Y = log(U/(1-U), base = exp(1))

print(mean( (Y<3) & (Y>2) ))