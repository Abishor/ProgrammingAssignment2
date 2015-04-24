## This is the second assignment for the R programming class

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(matrixx = matrix()) {
    globalInverse <- NULL
	set <- function(y) {
		if (matrixx != y) {
			globalInverse <<- NULL
			matrixx <<- y
		}
	}
	get <- function() {
		matrixx
	}
	setInv <- function(inv) {
		globalInverse <<- inv
	}
	getInv <- function() {
	globalInverse
	}
	list(set = set, get = get, setmean = setmean, getmean = getmean)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
# If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(globalInverse, ...) {
        ## Return a matrix that is the inverse of 'globalInverse'
	globalInverse <- matrixx$getInv()
	if(is.null(globalInverse)) {
		message("computing data data")
		data <- matrixx$get()
		inverse <- solve(data, ...)
		matrixx$setInv(inverse)
	} else {
		message("getting cached data")
	}
	globalInverse
}
