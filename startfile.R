##
## Ziehung der Lottozahlen für lotto6aus49 und eurojackpot (öffentliches PJ)
##

## Aufruf:
# lotto6aus49() 
# eurojackpot()


## 6 aus 49 plus Superzahl
lotto6aus49 <- function(){
    
    
    hz <- sort(sample(1:49, 6))                ## dflt: replace=FALSE in sample(1:49, 6, replace=FALSE), d.h. ohne Zurücklegen ## sort(floor(runif(6, min=1, max=50))) ist immer mit Zurücklegen, daher ungeeignet 
    sz <- sample(0:9, 1)   
    
    result <- paste0("6 aus 49 Tipp: ",Reduce("paste",hz)," ... SZ ",Reduce("paste",sz)) 
    
    return(result)
}


## 5 aus 50 plus 2 Eurozahlen
eurojackpot <- function(){
    
    hz <- sort(sample(1:50, 5))                ## dflt: replace=FALSE in sample(1:49, 6, replace=FALSE), d.h. ohne Zurücklegen
    ez <- sample(1:10, 2)   
    
    result <- paste0("5 aus 50 Tipp: ",Reduce("paste",hz)," ... EZ ",Reduce("paste",ez)) 
    
    return(result)
}