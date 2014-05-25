## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function creates a list containing a function to
# set the value of the matrix
# get the value of the matrix
# set the value of the inverse of the matrix
# get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        # minv will store the matrix
        minv <- NULL
        # setter for minv
        set <- function(y) {
                x <<- y
                m <<- NULL
        } 
        # getter for minv
        get <- function() x
        # setter for inverse matrix
        setinv <- function(inverse) minv <<- inverse
        # getter for inverse matrix
        getinv <- function() minv
        
        #return the list
        list( set = set, get = get, setinv = setinv, getinv = getinv )
}


## Write a short comment describing this function

## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
        #get the inverse of the matrix
        minv <- x$getinv()
        #if the inverse is already calculated, return it
        if(!is.null(minv)) {
                message("getting cached data ..")
                return(minv)
        }
        #calculate the inverse when is not yet calculated
        data <- x$get()
        minv <- solve(data)
        x$setinv(minv)
        minv
}
