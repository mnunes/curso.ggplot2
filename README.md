## Curso de `ggplot2`

Recentemente fui convidado pela organização do [2º Encontro Paraibano de Estatística](https://sites.google.com/site/epbest2018/) para ministrar um minicurso durante o evento. O tema que escolhi foi visualização de dados:

> **Visualização de dados com `ggplot2`**
> 
> Seja na análise dos resultados de algum experimento ou na modelagem de big data, todo trabalho estatístico começa com a visualização dos dados coletados. Embora seja negligenciada às vezes, a visualização é de suma importância para ajudar a levantar hipóteses, confirmar suspeitas e avaliar suposições. Neste minicurso veremos uma implementação da gramática de gráficos, um paradigma que favorece a construção de gráficos pensando-os como uma superposição de camadas diferentes. Os gráficos construídos com o pacote ggplot2 são pensados uma parte de cada vez, tornando o processo mais natural e intuitivo, permitindo ao mesmo tempo maior controle e flexibilidade aos gráficos gerados.

A fim de facilitar o entendimento dos alunos do curso, decidi criar um pacote no R com todo o material necessário para seu acompanhamento. Para instalar este pacote no seu computador, rode os comandos

    install.packages("devtools") # caso o pacote devtools não esteja instalado
    devtools::install_github("mnunes/curso.ggplot2", build_vignettes=TRUE)
    
Dependendo dos pacotes que seu computador já possua em disco, a instalação do pacote `curso.ggplot2` pode acabar demorando um pouco. Se o seu computador roda Windows, também é necessário instalar o programa [Rtools](https://cran.r-project.org/bin/windows/Rtools/).


Se tudo correr bem, o comando
    
    vignette("curso.ggplot2")

vai abrir o material que utilizei durante o evento. Há alguns exercícios ao final deste material. As respostas dos exercícios estão [neste link](https://github.com/mnunes/curso.ggplot2/blob/master/exercicios.R).



