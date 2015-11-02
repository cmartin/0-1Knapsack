v = c(1,2,3)
w = c(3,2,4)
n = 3
W = 5

w.to.test = 0:W
n.to.test = 1:n

m <- matrix(ncol = W + 1, nrow = n, dimnames = list(n.to.test, w.to.test))
m[,1] <- 0
m

for (i in 1:n) {
  for (j in 2:W) {
    m[i,j] <- m[i - 1, j]
  }
}
m
