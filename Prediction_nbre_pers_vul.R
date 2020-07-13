library(readxl)
regression_estim <- read_excel("C:/Users/USER/Desktop/Carte_BF avec R/regression_estim.xlsx")

model=lm(formula = Nbre_pers_vul ~ Nbre_commune, data=regression_estim)
summary(model)
#model2=glm(formula = Nbre_pers_vul ~ Nbre_commune, family = gaussian, data=regression_estim)
#model2
model_men=lm(formula = Nbre_menage_vul ~ Nbre_commune, data=regression_estim)
#<-aov(formula = Nbre_pers_vul ~ Nbre_commune, data=regression_estim)
summary(model_men)
predict(model, interval="confidence")

cor(Nbre_pers_vul,Nbre_commune, method="pearson")
plot(Nbre_pers_vul ~ Nbre_commune, data=regression_estim)
abline(model, col="red")