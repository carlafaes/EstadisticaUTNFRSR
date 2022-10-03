attach(productos_excel)
View(productos_excel)
##A-	GRAFICAR EN :  BARPLOT, BARPLOT EN COLORES, BARPLOT CON ORIENTACIONES 
##CAMBIADAS, CON COLORES DISTINTOS PARA CADA VARIABLE.
x <- table(productos_excel$...7)
x
y <- table(productos_excel$...8)
y
color= c("pink","lightyellow","lightgreen","red","blue","lightblue","yellow","violet","orange","purple","turquoise","cyan","tan","aquamarine","green","magenta","beige","chartreuse","bisque")
#ajustar los márgenes de la trama
#par(mar = c(1, 1, 1, 1))
#crear diagrama de dispersión
#(1:30)
barplot(x,xlab = "Unidades en existencia",y,ylab = "Unidades en pedido",main = "productos",col = color)
library(ggplot2)
ggplot(productos_excel,aes(x=...7)) + geom_bar(fill=color) + labs(title = "Productos", x="Unidades en existencia",y="Unidades en pedido")+theme_dark()
##B-	HISTOGRAMA: HISTOGRAMA EN LA CUAL CADA COLUMNA TENGA UN RANGO DE 0 A 2,
##HACER UN HISTOGRAMA HACIENDO CORTES, HACER UN HISTOGRAMA USANDO LA VARIABLE CARAT,
##HACER UN HISTOGRAMA USANDO LA VARIBLE CUT, HACER UNA HSITOGRAMA USANDO LA VARIBLE CUT Y COLOR
hist(x, col=color, main = "Histograma rango de 0 a 2",xlab = "Unidades en pedido", labels=T,ylim =c(0,2) )
hist(y,col=color, main = "Histograma con cortes/intervalos", xlab = "Unidades en existencia", labels = T, ylim = c(0,20),breaks = 20, xaxp=c(0,25,20))
ggplot(data = diamonds) + geom_histogram(mapping = aes(x=carat),binwidth = 0.5)
