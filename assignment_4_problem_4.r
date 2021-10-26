
sample_max_unif = function(n){
  U = runif(n)
  maxU = max(U)
  return(maxU)
}

n_reps = 10^6

n_vec = 1:10

for (n in n_vec) {
  S = replicate(n_reps, sample_max_unif(n))
  message(n, " ", mean(S))
}