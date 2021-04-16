library(tidyverse)
view(TABELA)

##GR�FICO CURSO COM MAIOR QUANTIDADE DE ALUNOS

qplot(x=Curso, data=TABELA, main="QUANTIDADE DE ALUNOS POR CURSO", beside=TRUE, ylab = "N�mero de Alunos",geom="bar") +
  theme_minimal()+theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

##HISTOGRAMA DO G�NERO RELACIONADA AO TIPO DE ESCOLA FREQUENTADA
g<- ggplot(TABELA)

g+ geom_histogram(aes(Sexo, fill=ESCOLA), binwidth=0.5, alpha=0.3, colour="black")+ theme_minimal() + labs(title ="HISTOGRAMA DO G�NERO RELACIONADA AO TIPO DE ESCOLA FREQUENTADA", x="G�nero", y="N�mero de Alunos" )

##HISTOGRAM DO G�NERO E SE O ALUNO TRABALHA
g+ geom_histogram(aes(Sexo, fill=Trabalha), binwidth=0.5, alpha=0.3, colour="black")

##HISTOGRAMA - FREQUENCIA HOMENS E MULHERES
hist(TABELA$Sexo, xlab = "Sexo", ylab="Frequencia", main = "Frequencia de G�nero", col="pink") 
ggplot(TABELA) + geom_histogram(aes(Sexo), binwidth= 0.5 ,alpha= 0.5,  col = "pink") + labs(title= "Frequ�ncia de G�nero", y="Frequ�ncia", x="G�nero")+theme_minimal()

##HISTOGRAM DO G�NERO E SE O ALUNO TRABALHA
g+ geom_histogram(aes(Sexo, fill=Trabalha), binwidth=0.5, alpha=0.3, colour="black")

##GR�FICO DE PIZZA
TABELA[,5]
freq<-table(TABELA[,5])
freq
pie (freq, main = "TIPO DE ESCOLA FREQUENTADA", labels = c("Escola Particular (53,4%)", "Escola P�blica (45,3%)","Frequentou Ambas (1,3%)"), col=c("pink","light blue","orange"))

##GR�FICO DE PONTOS - RELA��O ENTRE ANO DE INGRESSO, IDADE E SE TRABALHA
ggplot(TABELA) +geom_point(aes(Idade, ANO))
g<- ggplot(TABELA) +geom_point(aes(Idade, ANO, colour=Trabalha))+
  labs(title="RELA��O ENTRE ANO DE INGRESSO NA UNIVERSIDADE, IDADE E SE O ALUNO TRABALHA", x="IDADE DO ALUNO",y="ANO DE INGRESSO NA UNIVERSIDADE")+
  scale_colour_manual(name = "Trabalha?" ,labels=c("Trabalha","N�o Trabalha"),values=c("blue","tomato3"))
g
