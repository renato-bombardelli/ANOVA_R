### ANOVA utilizando pacote ExpDes ###
dados <- read.csv("teste.csv", header = TRUE, sep = '\t')
dados$Trat = factor(dados$Trat, levels=unique(dados$Trat))
dados$Rep=factor(dados$Rep, levels=unique(dados$Rep))

library(ExpDes)
#Tukey
rbd(dados$Trat, dados$Rep, dados$altura, mcomp = "tukey", sigT = 0.05, sigF = 0.05)

#Skot-Knott
rbd(dados$Trat, dados$Rep, dados$altura, mcomp = "sk", sigT = 0.05, sigF = 0.05)
