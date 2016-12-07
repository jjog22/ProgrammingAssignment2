# Example with execution with two functions created 
# evaluated for test solve and cache of matrix
#
##m<-matrix(nrow=3,ncol=3)
##m[1,]<-c(1,2,3)
##m[2,]<-c(0,1,4)
##m[3,]<-c(5,6,0)
##> a1<-makeCacheMatrix(m)
##> a1
##$set
##function (y) 
##{
##    x <<- y
##    i <<- NULL
##}
##<environment: 0x0000000004d540c0>
##
##$get
##function () 
##x
##<environment: 0x0000000004d540c0>

##$setinv
##function (solve) 
##i <<- solve
##<environment: 0x0000000004d540c0>

##$getinv
##function () 
##i
##<environment: 0x0000000004d540c0>

##> a1$get()
##     [,1] [,2] [,3]
##[1,]    1    2    3
##[2,]    0    1    4
##[3,]    5    6    0
##> a1$getinv()
##NULL
#
##> cacheSolve(a1)
##     [,1] [,2] [,3]
##[1,]  -24   18    5
##[2,]   20  -15   -4
##[3,]   -5    4    1

##> cacheSolve(a1)
##getting cached data
##     [,1] [,2] [,3]
##[1,]  -24   18    5
##[2,]   20  -15   -4
##[3,]   -5    4    1
