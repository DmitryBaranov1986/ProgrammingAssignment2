## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    slv <- x$getSlv()
    if(!is.null(slv))
    {
        message("Getting cached matrix")
        return (slv)
    }
    message("Evaluating inverse matrix")
    data <- x$get()
    slv <- solve(data)
    x$setSlv(slv)
    slv
}
