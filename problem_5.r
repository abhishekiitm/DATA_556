prob_tray_not_empty = function(m, n, p){
  Prob = pbinom(m, n, p) - pbinom(n-m, n, p) 
  return(Prob)
}

m_vec = 5000:10000

prob_vec = prob_tray_not_empty(m_vec, 10000, 0.5)

for (n in c(10, 100, 1000, 10000)) {
  m_vec = n/2:n
  prob_vec = prob_tray_not_empty(m_vec, 10000, 0.5)
  first_idx = min(which(prob_vec>0.95))
  min_m = m_vec[first_idx]
  print(min_m, n)
}
