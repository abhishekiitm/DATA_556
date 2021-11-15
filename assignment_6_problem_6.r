# code for problem 6 of assignment 6

n_reps = 10^7

X = runif(n_reps)
Y = runif(n_reps)

cov_estimate = cov(X, Y)

print(cov_estimate)