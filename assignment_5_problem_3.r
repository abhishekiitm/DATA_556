# code for problem 2 of assignment 5

# install.packages("modeest")
library(modeest)

# install.packages("extraDistr")
library(extraDistr)

Modes <- function(x) {
  ux <- unique(x)
  tab <- tabulate(match(x, ux))
  ux[tab == max(tab)]
}

medians <- function(x, min, max) {
  medians = c(0, 0)
  eps = 0.01
  idx = 1
  for (c in min:max){
    pg = mean(E>=c)
    pl = mean(E<=c)
    if ((pg >= 0.5-eps) & (pl >= 0.5-eps)) {
      medians[idx] = c
      idx = idx + 1
    }
  }
  return (medians)
}

n_reps = 10^7

N = 2

for (N in 1:10){
  min = 1
  E = rdunif(n_reps, min = min, max = N)
  
  # emedian_E = median(replicate(10^5, median(sample(min:N, 10, rep=T))))
  median_E = medians(E, min, N)
  mode_E = Modes(E)
  
  cat(sprintf("For N=\"%d\" median=\"%f\"\n", N, median_E[1]))
  if (median_E[2] != 0){
    cat(sprintf("For N=\"%d\" median=\"%f\"\n", N, median_E[2]))
  }
  cat(sprintf("For N=\"%d\" mode=\"%f\"\n", N, mode_E))
  cat(sprintf("\n"))
}