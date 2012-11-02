winter=read.csv("winter.csv",header=T)
attach(winter)
names(winter)
gold=winter[Medal=="Gold",]
silver=winter[Medal=="Silver",]
bronze=winter[Medal=="Bronze",]
g=tapply(rep(1, dim(gold)[1]), gold$NOC, sum)
s=tapply(rep(1, dim(silver)[1]), silver$NOC, sum)
b=tapply(rep(1, dim(bronze)[1]), bronze$NOC, sum)
name=names(g)
dimnames(g)=NULL
dimnames(s)=NULL
dimnames(b)=NULL
ranking=data.frame(NOC=name, Gold=g, Silver=s,Bronze=b)
save(ranking, file = "problem2.RData", list = c('problem2'))