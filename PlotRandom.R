plotRandomNormals <- function(numpts=1000, numbins=15, mu=24, sigma=3, meanColor="red", seed=8675309) {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins)
  abline(v=mean_x, col=meanColor)
  list(Random_values = rand_x,
       Mean_x = mean_x,
       SD_x = sd(rand_x) )
}

