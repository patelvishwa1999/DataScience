# Run this to get the data for each country
confirmed_cases_by_country <- read_csv("Downloads/Visualizing COVID-19/datasets/confirmed_cases_by_country.csv")
glimpse(confirmed_cases_by_country)

# Group by country, summarize to calculate total cases, find the top 7
top_countries_by_total_cases <- confirmed_cases_by_country %>%
  group_by(country) %>%
  summarize(total_cases=max(cum_cases)) %>%
  top_n(7,total_cases)

# See the result
top_countries_by_total_cases