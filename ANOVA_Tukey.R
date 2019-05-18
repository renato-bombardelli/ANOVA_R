tabela <- read.csv("teste.csv", header=T,sep='\t')
tabela$Trat = factor(tabela$Trat, levels=unique(tabela$Trat))
tabela$Rep=factor(tabela$Rep, levels=unique(tabela$Rep))
#altura=factor(tabela$altura, levels=unique(tabela$altura))

model = lm(tabela$altura ~ tabela$Trat + tabela$Rep, data = tabela)

a1 <- aov(tabela$altura ~ tabela$Trat + tabela$Rep)
tukey <- TukeyHSD(x=a1, 'tabela$Trat', conf.level=0.95)

anova <- anova(model)

anova
tukey
