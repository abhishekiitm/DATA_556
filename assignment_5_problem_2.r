# code for problem 2 of assignment 5

# install.packages("modeest")
library(modeest)

n_reps = 10^7

lambda = 2
E = rexp(n_reps, rate = lambda)

median_E = median(E)
mode_E = mlv(E, method="venter", bw=0.0001)

print(median_E)
print(mode_E)

hist(E, breaks=10000)