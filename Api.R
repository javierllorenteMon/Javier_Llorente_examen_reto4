library(plumber)
library(dplyr)

#* @apiTitle API Examen
#* @apiDescription API que metes un valor y retorna histograma, si le dices que "Si" te devolera el histograma esacalado, si le dices que "No" te lo devolvera un histograma simple

#* Plot a histogram
#* @param transformar
#* @serializer png
#* @get /plot
function(transformar) {
  df <- read.csv("netflix.csv")
  
    if(transformar=="Si"){
     trans <-  hist(scale(df$Minutes))
    }else if(transformar=="No"){
      trans <-  hist(df$Minutes)
   }
  return(trans)
}

