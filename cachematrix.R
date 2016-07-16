## The following 2 functions cache the inverse of a matrix

## Creates a list to set a matrix, get a matrix, set the value of the mean and get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
## Initializing to null
 i <- NULL
 ## set the matrix in the working environment
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
        ## checks if the inverse is already cached and returns it if it already exists
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting data")
                return(i)
        }
        ## else creates the inverse and returns it
        mat <- x$get()
        i <- solve(mat)
        x$setinverse(i)
        i
}
