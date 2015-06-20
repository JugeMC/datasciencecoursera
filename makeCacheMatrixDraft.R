makeCacheMatrix <- function(x=matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        set_inverse <- function(solve) m <<- solve
        get_inverse <- function() m
        list(set=set, get=get, set_inverse=set_inverse, get_inverse=get_inverse)
        
}
