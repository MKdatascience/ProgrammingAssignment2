## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
 inversematrix <- NULL
  setmatrix <- function(y) {
    x <<- y
    inversematrix <<- NULL
  }
  getmatrix <- function() x
  setinverse <- function(mean) inversematrix <<- inverse
  getinverse <- function() m
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inversematrix <- x$getinverse()
  if(!is.null(inversematrix)) {
    message("getting cached data")
    return(inversematrix)
  }
  data <- x$getmatrix()
  invmatrix <- solve(data, ...)
  x$setinverse(inversematrix)
  return(inversematrix) 
}
