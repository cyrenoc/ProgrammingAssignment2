## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  #setting values from matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
     
  }
  #getting values from matrix
  get <- function(){
    x
  }
  #setting matrix
  setInverse <- function(Inverse){
    m <<-  Inverse
    #print("ajustando matrix")
  }
  #return inverse matrix 
  getInverse <- function(){ 
    m
  }
  #list of functions
  list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    ## Return a matrix that is the inverse of 'x', it was calculated before
    return(m)
  }
  #calcule the new inverse of matrix x
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
}


