#

library(lme4)

par(mfrow=c(3, 4))

for (j in unique(sleepstudy$Subject)){

  dados <- subset(sleepstudy, sleepstudy$Subject==j)

  plot(Reaction ~ Days, data=dados)

  regressao <- lm(Reaction ~ Days, data=dados)

  abline(regressao)
}


