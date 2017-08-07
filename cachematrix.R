
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

      #the following function I used the makeVector and just changed the mean parts to be inverse. 
            #like the makeVector this function makes a cache of the inverse instead of the mean of a vector.  
makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinverse <- function(inverse) m <<- inverse
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


## Write a short comment describing this function
      #This function calculates the mean if needed else gets the inverse of the matrix from the cache.
cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      m <- x$getinverse()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
}
