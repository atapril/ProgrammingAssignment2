## This functions is used to cache inverse of matrix


## Function makeCacheMatrix is a list of functions, this list is built in parent enviroment.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function()x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set=set, get=get, setinverse= setinverse, getinverse=getinverse)
}

## This function check to see if inverse of matrix x is cache or not, if inver of matrix x is cached, the function will return inverse of matrix x,
## if not, the function will calculate inverse of matrix x

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setinverse(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
        }
        
}
