# 1

reembolsos::camara

# 2

camara %>%
  filter(state=="PB") %>%
  count()

# 3

camara %>%
  filter(state=="PB") %>%
  group_by(year) %>%
  count()

# 4

camara %>%
  filter(state=="PB") %>%
  filter(year>=2015 & year<=2017) %>%
  group_by(congressperson_name) %>%
  count() %>%
  arrange(desc(n))


# 5

camara %>%
  filter(state=="PB") %>%
  filter(year>=2015 & year<=2017) %>%
  group_by(congressperson_name) %>%
  summarise(Total=sum(total_net_value)) %>%
  arrange(desc(Total))

# 6

camara %>%
  group_by(year, party) %>%
  summarise(Total=sum(total_net_value)) %>%
  ggplot(., aes(x=year, y=Total, colour=party)) +
  geom_line() +
  labs(x="Ano", y="Total", colour="Partido") +
  scale_x_continuous(breaks=seq(2009, 2017, 1))

# 7

camara %>%
  filter(year==2017) %>%
  group_by(subquota_description) %>%
  summarise(Total=sum(total_net_value)) %>%
  ggplot(., aes(x=reorder(subquota_description, -Total), y=Total/1e6)) +
  geom_col() +
  theme(axis.text.x = element_text(angle = 90, vjust=0.5, hjust = 1)) +
  labs(x="Categoria de Gasto", y="Valor Total Ressarcido (em milhões de R$)")

# 8

camara %>%
  filter(state=="PB") %>%
  filter(subquota_description=="Congressperson meal") %>%
  group_by(supplier) %>%
  summarise(Media=mean(total_net_value)) %>%
  arrange(desc(Media))

# 9

camara %>%
  filter(state=="PB") %>%
  filter(subquota_description=="Congressperson meal") %>%
  group_by(supplier) %>%
  summarise(Media=mean(total_net_value), n=n()) %>%
  arrange(desc(Media))

# 10

camara %>%
  filter(state=="PB") %>%
  filter(subquota_description=="Congressperson meal") %>%
  group_by(supplier) %>%
  summarise(Media=mean(total_net_value), n=n()) %>%
  filter(n >=10) %>%
  arrange(desc(Media))







