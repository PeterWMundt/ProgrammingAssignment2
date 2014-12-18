## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
# makeCacheMatrix <- function(x = matrix()) {}


## makeCacheMatrix: This function creates a special "matrix" object 
#                   that can cache the inverse of the original matrix.
##
makeCacheMatrix <- function(matrix = matrix()) {
        inv <- NULL
        set <- function(y) {
                matrix <<- y
                inv <<- NULL
        }
        get <- function() matrix
        setInverse <- function(solve) inv <<- solve
        getInverse <- function() inv
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}



## Write a short comment describing this function
#  cacheSolve <- function(x, ...) {         ## Return a matrix that is the inverse of 'x' }

# cacheSolve: This function computes the inverse of the special "matrix" 
#             returned by makeCacheMatrix. 
#             If the inverse has already been calculated (and the matrix has not changed), 
#             then the cachesolve should retrieve the inverse from the cache.
#
cacheSolve <- function(cacheMatrix, ...) {
        inv <- cacheMatrix$getInverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        matrix <- cacheMatrix$get()
        inv <- solve(matrix)
        cacheMatrix$setInverse(inv)
        inv
}
