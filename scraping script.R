### Setup

library(tidyverse)
library(rvest)

### Scrape data

read_html("http://www.flhealthcharts.com/charts/OtherIndicators/NonVitalSTDTenYrRpt.aspx?cid=144") %>% 
  html_nodes("#gvTenYrGrid") %>% 
  html_table() %>% 
  .[[1]] -> inf_syph