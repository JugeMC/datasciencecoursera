cacheSolve <- function(x,...) {
        m <- x$get_inverse()
        if (!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m<-solve(data,...)
        x$set_inverse(m)
        m
}