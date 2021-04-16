library(tidyverse)
view(TABELA)

##GRÁFICO CURSO COM MAIOR QUANTIDADE DE ALUNOS

qplot(x=Curso, data=TABELA, main="QUANTIDADE DE ALUNOS POR CURSO", beside=TRUE, ylab = "Número de Alunos",geom="bar") +
  theme_minimal()+theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

##HISTOGRAMA DO GÊNERO RELACIONADA AO TIPO DE ESCOLA FREQUENTADA
g<- ggplot(TABELA)

g+ geom_histogram(aes(Sexo, fill=ESCOLA), binwidth=0.5, alpha=0.3, colour="black")+ theme_minimal() + labs(title ="HISTOGRAMA DO GÊNERO RELACIONADA AO TIPO DE ESCOLA FREQUENTADA", x="Gênero", y="Número de Alunos" )

##HISTOGRAM DO GÊNERO E SE O ALUNO TRABALHA
g+ geom_histogram(aes(Sexo, fill=Trabalha), binwidth=0.5, alpha=0.3, colour="black")

##HISTOGRAMA - FREQUENCIA HOMENS E MULHERES
hist(TABELA$Sexo, xlab = "Sexo", ylab="Frequencia", main = "Frequencia de Gênero", col="pink") 
ggplot(TABELA) + geom_histogram(aes(Sexo), binwidth= 0.5 ,alpha= 0.5,  col = "pink") + labs(title= "Frequência de Gênero", y="Frequência", x="Gênero")+theme_minimal()

##HISTOGRAM DO GÊNERO E SE O ALUNO TRABALHA
g+ geom_histogram(aes(Sexo, fill=Trabalha), binwidth=0.5, alpha=0.3, colour="black")

##GRÁFICO DE PIZZA
TABELA[,5]
freq<-table(TABELA[,5])
freq
pie (freq, main = "TIPO DE ESCOLA FREQUENTADA", labels = c("Escola Particular (53,4%)", "Escola Pública (45,3%)","Frequentou Ambas (1,3%)"), col=c("pink","light blue","orange"))

##GRÁFICO DE PONTOS - RELAÇÃO ENTRE ANO DE INGRESSO, IDADE E SE TRABALHA
ggplot(TABELA) +geom_point(aes(Idade, ANO))
g<- ggplot(TABELA) +geom_point(aes(Idade, ANO, colour=Trabalha))+
  labs(title="RELAÇÃO ENTRE ANO DE INGRESSO NA UNIVERSIDADE, IDADE E SE O ALUNO TRABALHA", x="IDADE DO ALUNO",y="ANO DE INGRESSO NA UNIVERSIDADE")+
  scale_colour_manual(name = "Trabalha?" ,labels=c("Trabalha","Não Trabalha"),values=c("blue","tomato3"))
g
