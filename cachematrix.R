## Following set of functions implement caching of inverse matrix calculation

## Creates special object for storing inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    slv <- NULL
    
    set <- function(m) 
    {
        mtx <<- m
        slv <<- NULL
    }
    
    get <- function()
    {
        mtx
    }
    
    setSlv <- function(i)
    {
        slv <<- i
    }
    
    getSlv <- function()
    {
        slv
    }
    
    list(set = set, get = get, setSlv = setSlv, getSlv = getSlv)
}


## Returns matrix that is inverse. If exists, gets already calculated matrix, otherwise calculate it.

cacheSolve <- function(x, ...) {
    slv <- x$getSlv()
    # if a matrix already is inverse then return it
    if(!is.null(slv))
    {
        message("Getting cached matrix")
        return (slv)
    }
    # else solve an inverse matrix
    message("Evaluating inverse matrix")
    data <- x$get()
    slv <- solve(data, ...)
    x$setSlv(slv)
    slv
}
