## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i = NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() {x}
  
  setinv <- function(inv) {i <<- inv} 
  
  getinv <- function() {i}
  
  list(get = get ,set = set ,setinv =setinv, getinv =getinv )
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if (!is.null(inv)) {
    message("getting catchedata")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat)
  x$setinv(inv)
  inv
  ## Return a matrix that is the inverse of 'x'
}

