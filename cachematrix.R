## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { # This function defines a matrix through variable x which can be red by getmatrix
m<-NULL
setmatrix<-function(y){
  x<<-y
  m<<-NULL
} 

getmatrix<-function() x  # this function read the matrix that was defined setmatrix or defined by the main function "makeCacheMatrix"

setinvmatrix<-function(inversematrix) m<<-inversematrix # this function to assign the inverse matrix in the global variable m

getinvmatrix<- function() m # this function print the inverse matrix

list(setmatrix = setmatrix, getmatrix = getmatrix,
     setinvmatrix = setinvmatrix,
     getinvmatrix = getinvmatrix)  # this list is the output of makeCacheMatrix function 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m<-x$getinvmatrix() # to assign the invese matrix if exist to m vairable
  
  if(!is.null(m)) {
    message("getting the inverse matrix from cached data")
    return(m) # to check whether the inverse matrix was calculated earlier or not. if it was calculated, it will return the invesr from the cached data
  }
    
  data<- x$getmatrix()  # if the inverse was not calculated earlier, assign the orginal matrix to data variable using getmatrix() function
  m<-solve(data,...) # calculate the inverse of the original matrix
  x$setinvmatrix(m) # save the inverse matrix into the cached data which is reprensted as m variable using setinvmatrix() function.
  m
}