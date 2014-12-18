## This is a helper class to do some testing for Programming Assignment 2
## 
source("cachematrix.R")
# 1) create a simple matrix
mat <- matrix(c(1,2,3,4), nrow=2, ncol=2)
# 2) create the object containing the original matrix and its inverse
cache_mat <- makeCacheMatrix(mat)
# 3) retrieve the inverse matrix from the 'cache' object
mat_inverse <- cacheSolve(cache_mat)
# 4) validate the inverse matrix (by executing a matrix multiplication)
mat_inverse %*% mat
# expected result: 
#     [,1] [,2]
#[1,]    1    0
#[2,]    0    1
