## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function



makeCacheMatrix <- function(x = matrix()) { #The function make makeCacheMatrix receive matrix 'X' how parameter
  matrixcache <<- x # was created a value in memory cache for variable that represent matrix
  matrixin <<- NULL # was created a value in memory cache for variable 
  get <- function() {matrixcache} # was created function get for return date
  set <- function(novomatrix =matrix()){# was created function set for possible change in atributtes values
    matrixcache <<- novomatrix
    matrixin <<- NULL # When ocurr change in matrix value the matrix in value changed too
    }
  get_matrixin <- function() {matrixin} # was created function get for return date of matrix inverse
  set_matrixin <- function(novomatrix_in =matrix()){ # was created function set for possible change in atributtes
    matrixin <<- novomatrix_in}
  list(get=get,set=set,get_matrixin=get_matrixin,set_matrixin=set_matrixin)
} # was created a return list with values presents in gets and sets functions

A <- matrix( c(5, 1, 0,
               3,-1, 2,
               4, 0,-1), nrow=3, byrow=TRUE)

matrixTeste = makeCacheMatrix(A)

matrixTeste$get()
matrixTeste$get_matrixin()

## Write a short comment describing this function


cacheSolve <- function(x, ...) { # The function receive the x parameter that consist the object MatrixTeste
  matrixt <- x$get()
  if(!is.null(x$get_matrixin())) # The line is evaluating if get matrix inverse function is Null because this represent 
  {
print("Already Calculated")
    return(x$get_matrixin()) # The line return matrix inverse case already calculated
    
  }
  inv_matrix <- solve(matrixt) #solve function calculate the matrix inverse present in get object MatrixTeste 
  x$set_matrixin(inv_matrix) # Function set was used to register previous result 
  return(x$get_matrixin()) # return matrix inverse result
}
cacheSolve(matrixTeste)

B <- matrix( c(8, 1, 0,
               3,-1, 2,
               4, 0,-1), nrow=3, byrow=TRUE)


matrixTeste$set(B)

cacheSolve(matrixTeste)



###  Brenda Raíssa de Oliveira: brenda_raissa_oliveira@hotmail.com
