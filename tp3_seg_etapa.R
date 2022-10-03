attach(productos_excel)
View(productos_excel)
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
