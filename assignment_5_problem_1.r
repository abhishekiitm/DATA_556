# code for problem 1 of assignment 5

Modes <- function(x) {
  ux <- unique(x)
  tab <- tabulate(match(x, ux))
  ux[tab == max(tab)]
}


n_reps = 10^7

a = 0
b = 2
U = runif(n_reps, min=a, max=b)

median_U = median(U)
mode_U = Modes(U)

print(median_U)
print(mode_U)

hist(U, breaks = 10000)