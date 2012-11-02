winter=read.csv("winter.csv",header=T)
attach(winter)
names(winter)
gold=winter[Medal=="Gold",]
silver=winter[Medal=="Silver",]
bronze=winter[Medal=="Bronze",]