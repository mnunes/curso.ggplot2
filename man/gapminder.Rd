\docType{data}
\name{gapminder}
\alias{gapminder}
\title{Dados socio-economicos de 142 paises entre 1950 e 2007}
\format{Um tibble com 3313 observacoes nas seguintes 6 variaveis:
  \describe{
    \item{\code{country}}{Fator com o nome de 142 paises}
    \item{\code{continent}}{Continente dos paises}
    \item{\code{year}}{Ano de coleta dos dados, entre 1950 e 2007}
    \item{\code{lifeExp}}{Expectativa de vida ao nascer, em anos}
    \item{\code{pop}}{Populacao}
    \item{\code{gdpPercap}}{PIB per capita, em US\$, ajustado pela inflacao}
  }}
\description{
  Conjunto de dados da Gapminder Foundation, com observacoes de diversas variaveis de 142 paises
}

\examples{
str(gapminder)

anos <- seq(from=1952, to=2007, by=5)

gapminder %>%
  filter(year %in% anos) %>%
  ggplot(., aes(x=log(gdpPercap), y=lifeExp)) +
  geom_point(aes(colour=continent)) +
  labs(x="PIB per capita (US$), log", y="Expectativa de Vida (anos)", colour="Continente") +
  facet_wrap(~ year, nrow=3)
}

\references{
\url{http://www.gapminder.org/data/}
}
\keyword{datasets}

