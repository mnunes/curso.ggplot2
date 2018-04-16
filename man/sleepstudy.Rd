\docType{data}
\name{sleepstudy}
\alias{sleepstudy}
\title{Tempos de reacao em um estudo de privacao de sono}
\format{Um tibble com 180 observacoes nas seguintes 3 variaveis:
  \describe{
    \item{\code{Reaction}}{Tempo medio de reacao (ms)}
    \item{\code{Days}}{Numero de dias de privacao de sono}
    \item{\code{Subject}}{Numero do sujeito envolvido no estudo}
  }}
\description{
  Tempo medio de reacao de sujeitos em um experimento de privacao de sono. No dia 0 os sujeitos tiveram a quantidade normal de sono. A partir deste dia, cada sujeito teve seu sono restrito a apenas 3 horas por noite. As observacoes representam a media do tempo de reacao para uma serie de testes aplicados a cada sujeito durante cada dia do experimento.
}

\examples{
str(sleepstudy)
ggplot(sleepstudy, aes(x=Days, y=Reaction)) +
  geom_point() +
  scale_x_continuous(breaks=seq(0, 9, 3)) +
  labs(x="Dias", y="Tempo de Reação (ms)", title="Estudo de Fadiga") +
  geom_smooth(method="lm", se=FALSE, color="black") +
  facet_wrap(~ Subject, nrow=3)
}

\references{
  Gregory Belenky, Nancy J. Wesensten, David R. Thorne,
  Maria L. Thomas, Helen C. Sing, Daniel P. Redmond,
  Michael B. Russo and Thomas J. Balkin (2003) Patterns of
  performance degradation and restoration during sleep
  restriction and subsequent recovery: a sleep
  dose-response study. \emph{Journal of Sleep Research}
  \bold{12}, 1--12.
}
\keyword{datasets}

