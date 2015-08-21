## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
setmatrix<-function(y){
  x<<-y
  m<<-NULL
}
getmatrix<-function() x
setinvmatrix<-function(inversematrix) m<<-inversematrix
getinvmatrix<- function() m
list(setmatrix = setmatrix, getmatrix = getmatrix,
     setinvmatrix = setinvmatrix,
     getinvmatrix = getinvmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m<-x$getinvmatrix()
  if(!is.null(m)) {
    message("getting the inverse matrix from cached data")
    return(m)
  }
    
  data<- x$getmatrix()
  m<-solve(data,...)
  x$setinvmatrix(m)
  m
}
  

  




