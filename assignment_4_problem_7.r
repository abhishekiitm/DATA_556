require(ggplot2)

theta_vec = 0:10/10

prior_vec = rep(1/length(theta_vec), length(theta_vec))

y = 5
n = 5
likelihood = dbinom(y, n, theta_vec)

posterior_vec = likelihood * prior_vec
posterior_vec = posterior_vec / sum(posterior_vec)

ggplot(data.frame(theta_vec, posterior_vec, prior_vec), aes(theta_vec, y=value, color=variable)) + 
  geom_point(aes(y=posterior_vec, col="posterior distribution"),  size=3.7) + 
  geom_point(aes(y=prior_vec, col="prior distribution"), size=3.7) +
  ggtitle(paste0('Posterior and prior distributions for y = ', y)) + 
  scale_x_continuous(breaks = theta_vec*2)
