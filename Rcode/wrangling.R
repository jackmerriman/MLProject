library(tidyverse)
Q3_2018 <- read.csv('2018_q3.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q4_2018 <- read.csv('2018_q4.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q1_2019 <- read.csv('2019_q1.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q2_2019 <- read.csv('2019_q2.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q3_2019 <- read.csv('2019_q3.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q4_2019 <- read.csv('2019_q4.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q1_2020 <- read.csv('2020_q1.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q2_2020 <- read.csv('2020_q2.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q3_2020 <- read.csv('2020_q3.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q4_2020 <- read.csv('2020_q4.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q1_2021 <- read.csv('2021_q1.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q2_2021 <- read.csv('2021_q2.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q3_2021 <- read.csv('2021_q3.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")
Q4_2021 <- read.csv('2021_q4.csv') %>%
  filter(NAME == "CHARLEMONT PLACE"|
           NAME == "ST. STEPHEN'S GREEN EAST"|
           NAME =="PHIBSBOROUGH ROAD")



data <- bind_rows(Q3_2018, Q4_2018)
data <- data %>%
  bind_rows(Q1_2019) %>%
  bind_rows(Q2_2019) %>%
  bind_rows(Q3_2019) %>%
  bind_rows(Q4_2019) %>%
  bind_rows(Q1_2020) %>%
  bind_rows(Q2_2020) %>%
  bind_rows(Q3_2020) %>%
  bind_rows(Q4_2020) %>%
  bind_rows(Q1_2021) %>%
  bind_rows(Q2_2021) %>%
  bind_rows(Q3_2021) %>%
  bind_rows(Q4_2021)

data <- data %>%
  select(c(TIME, NAME, BIKE.STANDS, AVAILABLE.BIKE.STANDS, AVAILABLE.BIKES, STATUS))

write.csv(data, file="bikedata.csv")
