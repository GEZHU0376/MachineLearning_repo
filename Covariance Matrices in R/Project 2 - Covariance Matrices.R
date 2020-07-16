# Building a Covariance Matrix in R - Two Ways

# Create column vectors
a <- c(1,2,3,4,5,6)
b <- c(1,3,5,7,9,11)
c <- c(10, 20, 30, 40, 50, 60)
d <- c(2, 5, 5, 2, 1, 0)
e <- c(4, 5, 6, 7, 8, 9)

# Create matrix from vectors
# combine several vecetors
M <- cbind(a, b, c, d, e)
k <- ncol(M)
n <- nrow(M)

# print M
M

# Find the mean for each column
k_mean <- matrix(data = 1, nrow = n) %*% cbind(mean(a), mean(b), mean(c), mean(d), mean(e))
k_mean

# Create a difference matrix
diffM <- M - k_mean
diffM

# Create the covariance matrix
covarM <- (n-1)^-1 * t(diffM) %*% diffM #sample covariance
covarM

# Find variances from the covariance matrix
variance <- diag(covarM)
variance

# Use R's built-in functions
cov(M)
