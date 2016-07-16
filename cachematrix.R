## The following 2 functions cache the inverse of a matrix

## Creates a list to set a matrix, get a matrix, set the value of the mean and get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
 i <- NULL
 set <- function(y) {
        x <<- y
        i <<- NULL
 }
get <- function() x
setinverse <- function(inverse) i <<- inverse 
getinverse <- function() i
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Sets the value of the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting data")
                return(i)
        }
        mat <- x$get()
        i <- solve(mat)
        x$setinverse(i)
        i
}
