n_reps = 10^7

X1 = rnorm(n_reps, 0, 1)
X2 = rnorm(n_reps, 1, sqrt(5))

Z = X1 - X2

print(mean(Z<0))