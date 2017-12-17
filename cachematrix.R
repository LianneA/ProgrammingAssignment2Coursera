## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##tempholder-is a placeholder
##set- sets the value of the matrix
##get- retrieves the value of the matrix
##setinverse- sets the inverse value of the matrix
##getinverse- retrieves the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  tempholder <- NULL
  set <- function(y)
  {
    x <<- y
    tempholder <<- NULL
  }
  get <- function() x 
  setinverse <- function(inverse) tempholder <<- inverse  
  getinverse <- function() tempholder 
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

##checks the placeholder/cache if empty
##retrieves matrix content
## Returns the inverse function of the matrix. 
##double check if the matrix is inversed, if not inverse the matrix.

cacheSolve <- function(x, ...) {
  tempholder <- x$getinv()
  if(!is.null(tempholder)) {
    message("Retrieving...")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}

