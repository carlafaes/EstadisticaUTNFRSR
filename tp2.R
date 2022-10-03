names(colores)
#Se le pidió a un grupo de personas que indiquen su color favorito, y se obtuvo los siguientes resultados
View(colores)
colores$integrantes
colores$colores
#creamos la tabla de frecuencias
as.data.frame(table(colores$integrantes))
frecuencias_integrantes <- as.data.frame(table(colores$integrantes))
transform(frecuencias_integrantes,
          FreqAc=cumsum(frecuencias_integrantes$Freq),
          Rel=round(prop.table(frecuencias_integrantes$Freq)),
          RelatAcum=round(cumsum(prop.table(frecuencias_integrantes$Freq))))
          
#calculamos su promedio
mean(colores$integrantes)## resultado = 5 
#calculamos la mediana
median(colores$integrantes)## resultado = 5

