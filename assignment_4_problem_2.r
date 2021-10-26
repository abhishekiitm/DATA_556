n_reps = 10^7

x1 = runif(n_reps)
area = pi*x1*x1

print(mean(area))
print(var(area))