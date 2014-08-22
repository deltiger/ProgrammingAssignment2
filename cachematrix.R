## Put comments here that give an overall description of what your
## functions do

## function for making a matrix that can cache its inverse. returns a list 
## of functions. set sets the matrix, get gets the matrix data, setInverse 
## stores a value for the inverse of the matrix, getInverse gets stored value
## if it exists

makeCacheMatrix <- function(x = matrix()) {
m <- null
set <- function(y) {
  x <<- y
  m <<- null
}
get <- function() x
setInverse <- function(inverse) m <<- inverse
getInverse <- function() m
list(set = set, get = get, setmean = setInverse = setInverse, getInverse = getInverse)
}


## checks to see if inverse is cached. if it is, returns cached inverse. 
## if not, calculates, caches, and returns inverse.

cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if(!is.null(m)) {
          message ("getting cached data")
          return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setInverse(m)
        m
}
