view(quakes)

q<-quakes[-(20:1000),]
view(q)

#BOX PLOT 1
boxplot(x=q$depth ,  ylab="PROFUNDIDADE", main="BOXPLOT - PROFUNDIDADE", col="pink")

#BOX PLOT 2
ggplot(ChickWeight) + geom_boxplot(aes(x=Time , y=weight, fill=Diet))+geom_jitter(aes(x=Time, y=weight, group=Diet))+labs(title= "BoxPlot Peso dos frangos", x="Tempo", y="Peso")+theme_bw()
 

#Densidade de Kernel
ggplot(q, aes(lat))+geom_density()+theme_minimal() + labs( title = "DENSIDADE DE KERNEL - PROFUNDADE", x="LATITUDE", y="DENSIDADE")

view(ChickWeight)


# GRÁFICOS DE PONTOS
view(ChickWeight)
g <- ggplot(ChickWeight)

g <- g + geom_point(aes(x = weight, y = Time, color = Diet), size = 3) + labs(title = 'Relação entre peso, tempo e dieta dos frangos', y = 'Peso', x = 'Tempo')

g

#REGRESSÃO LINEAR
ggplot(q,aes(x=depth,y= mag))+ geom_point(colour="steelblue",size=4)+
  geom_smooth(method="lm",colour="black")+labs(title="Regressão linear de Terremotos", x="Profundidade", y="Magnitude")+
  theme_minimal()  


#HISTOGRAM
f1 <- ggplot(ChickWeight, aes(weight, fill=Diet))+geom_bar()+
  labs(tittle="Fraquência de cada valor Petal Length",x="Valores de Petal Length", y="Frequência/Contagem")+
  scale_fill_manual(name="Dieta", labels=c("1","2","4","5"), values=c("goldenrod2","steelblue","green4","orange"))
f1
