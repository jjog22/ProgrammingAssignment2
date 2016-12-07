## This file contains functions for pass matrix and prepare variables for
## correct calculation inverse matrix for first time and cache that 
## in any other call to solve that matrix

## makeCacheMatrix gets matrix x and initialize set() get() setinv() getinv()
## returns list with all variables for solve in the other function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(minv) i <<- minv
  getinv <- function() i
  list(set = set, get = get,setinv = setinv,getinv = getinv)
}




## cacheSolve validate if inverse exists and show it
## if inverse not exists get matrix from variable and calls solve() function
## setting in i the inverse matrix with setinv() function

cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}
