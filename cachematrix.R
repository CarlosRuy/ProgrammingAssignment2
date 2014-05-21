## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix <- stores minvert into the cache
## set <- receives a matrix, stores in x, clears minvert
## get <- gets value of x and returns it
## setinvert <- receives a matrix and stores into minvert
## getinvert <- returns the matrix stored in the cache

makeCacheMatrix <- function(x = matrix()) {

	minvert <- NULL

	set <- function(y) {
		x <<- y
		minvert <- NULL
	}

	get <- funtion() x
	setinv <- function(inverse) minvert <<- inverse
	getinv <- function() minvert

	list(set=set, get=get, setinv=setinv, getinv=getinv)

}

## cacheSolve <- compute the inverse of a matrix using "solve"
## only once - if the cache is empty

Cachesolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'

	minvert <- x$getinv()

	if(!is.null(minvert)) {

		message("get data in cache")
		return(minvert)
	}

	data <- x$get()
	minvert <- solve(data,...)

	x$setinv(minvert)

	minvert
}


