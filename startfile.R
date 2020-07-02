##
## Ziehung der Lottozahlen für lotto6aus49 und eurojackpot (öffentliches PJ)
##

## Aufruf:
# lotto6aus49() 
# eurojackpot()

## von remote sourcen per devtools::source_url(<link zur file-raw-version>)
## ABER "private" Repositories verwenden einen token.Diesen zuvor in github nachschlagen 
## (Datei in der Ansicht "raw" anklicken, dann siehe "token="-Suffix in Adressleiste der Website)
# library(devtools)
# gitHub_code <- "https://raw.githubusercontent.com/anguenth/lottoziehung/master/startfile.R"     
# source_url(gitHub_code)
# lotto6aus49(); eurojackpot()   ## stehen zur Verfügung

#####################################################################################################
##
## Exkurs: Alternative PRIVATES PJ
##
## von remote sourcen per devtools::source_url(<link zur file-raw-version>)
## ABER "private" Repositories verwenden einen token.Diesen zuvor in github nachschlagen 
## (Datei in der Ansicht "raw" anklicken, dann siehe "token="-Suffix in Adressleiste der Website)
# library(devtools)
# gitHub_code <- "https://raw.githubusercontent.com/anguenth/lotto_priv/master/startfile.R?token=ADC234IJFFFXSINVP6STA6S67S37O"  
# source_url(gitHub_code)
# ziehung()                      ## nur 6 aus 49 Tipp
#####################################################################################################

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