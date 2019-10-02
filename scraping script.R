### Setup

library(tidyverse)
library(rvest)

### Scrape data

read_html("http://www.flhealthcharts.com/charts/OtherIndicators/NonVitalSTDTenYrRpt.aspx?cid=144") %>% 
  html_nodes("#gvTenYrGrid") %>% 
  html_table() %>% 
  .[[1]] -> inf_syph

read_html("https://www.who.int/csr/sars/country/2003_07_11/en/") %>% 
  html_nodes(".tableData") %>% 
  html_table(header = T) %>%
  .[[1]] -> sars

View(sars)
