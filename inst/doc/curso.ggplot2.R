## ----setup, include=FALSE------------------------------------------------
library(ggplot2)
library(dplyr)
library(curso.ggplot2)
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  echo=TRUE,
  eval=TRUE, 
  message=FALSE,
  fig.width=8,
  fig.height=6,
  tidy=FALSE
)

## ----sleepstudyPlot01----------------------------------------------------
ggplot(sleepstudy, aes(x=Days, y=Reaction)) + 
  geom_point() + 
  scale_x_continuous(breaks=seq(0, 9, 3)) +
  labs(x="Dias", y="Tempo de Reação (ms)", title="Estudo de Fadiga") +
  geom_smooth(method="lm", se=FALSE, color="black") + 
  facet_wrap(~ Subject, nrow=3)

## ----ggplot01b, echo=TRUE------------------------------------------------
str(sleepstudy)
head(sleepstudy)

## ----ggplot02, eval=FALSE------------------------------------------------
#  ggplot(dados, aes(x=Preditora, y=Resposta))

## ----ggplot03, eval=FALSE------------------------------------------------
#  ggplot(sleepstudy, aes(x=Days, y=Reaction))

