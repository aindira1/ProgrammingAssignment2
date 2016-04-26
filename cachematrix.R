## the following function creates a code for making cachematrix
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inversematrix <- NULL
set <- function(y){
  x <<- y
  inv <<- NULL
}
  
get <- function()x
setInverse <- function(inverse) inversematrix <<- inverse
getInverse <- function()inv
list (set = set, get =get, setInverse = setInverse, getInverse = getInverse)
}


## to write a cacheSolve for inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inversematrix <- x$getInverse()
  checknull <- is.null(inversematrix)
  if (!checknull){
    message ("get the cached data")
    return(inversematrix)
  }
  else{
    newmatrix <- x$get()
    inversematrix <- solve(newmatrix, ...)
    x$setInverse(inversematrix)
    inversematrix
      }
  }
