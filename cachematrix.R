
#to find the inverse of a matrix using solve and to cache the result

# makeCacheMatrix is used to create a matrix and to find the inverse of the matrix 
#using solve function to find the inverse 
 

makeCacheMatrix <- function(x = matrix()) {
         p <- null
         setMat <- function(newmat) {
                 #setMat is used to set the value of the matrix
               x <<- newmat
                 p <<- NULL
                 }
         getMat <- function() {
                 #getMat is used to get the value of the matrix
                 x     }
         
 
 setInverse <- function(solve) {
                  p <<- solve
        }
         getInverse <- function() {
                 # getInverse is used to get the Inverse of the matrix
                 p
         }
         list(setMat = setMat, getMat = getMat, setInverse = setInverse, getInverse = getInverse)
  }
 
 
#cacheSolve is used to Cache the inverse of the matrix.
 
 cacheSolve <- function(x, ...) {
      p <- x$getInverse()
         if(!is.null(p)) {
                 message("getting cached data")
                 return(p)
                 # gets the cached value of the inverse if the same matrix is given 
 }
 data <- x$getMat()
         p<- solve(data)
         #if a new matrix is given then it calculates the inverse again.
         x$setInverse(p)
         p
 }
 

}