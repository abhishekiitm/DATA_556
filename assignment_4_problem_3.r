n_reps = 10^7

U = runif(n_reps)
Y = pmax(U, 1-U)
X = 1-Y
R = X/Y

print(mean(R))
print(mean(1/R))
