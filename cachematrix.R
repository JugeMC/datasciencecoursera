## This R file contains two functions, makeCacheMatrix and cacheSolve

## function makeCacheMatrix stores a list that contains four functions
## set() : changes the matrix stored in the main function
## get() : returns the matrix x stored in the main function
## set_inverse() : stores the value of the matrix inversion
## get_inverse() : returns the value of the matrix inversion

makeCacheMatrix <- function(x=matrix()) {
        #initialize m as NULL
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        set_inverse <- function(solve) m <<- solve
        get_inverse <- function() m
        # the following line stores the four functions in a list:
        list(set=set, get=get, set_inverse=set_inverse, get_inverse=get_inverse)
        
}



## The cacheSolve matrix returns a matrix that is the inversion of 'x'
## If a matrix value exists for m, the function returns a message and the matrix inversion
## rather than recomputing the matrix inversion

cacheSolve <- function(x,...) {
        m <- x$get_inverse()
        # check if the matrix inversion already exists in m
        if (!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        # get the data
        data <- x$get()
        # use the solve function to set the matrix inversion as m
        m<-solve(data,...)
        #set the new matrix inversion to m
        x$set_inverse(m)
        #return the matrix inversion
        m
}