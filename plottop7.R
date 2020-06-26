# Run this to get the data for the top 7 countries
confirmed_cases_top7_outside_china = read_csv("Downloads/Visualizing COVID-19/datasets/confirmed_cases_top7_outside_china.csv")

# 
glimpse("confirmed_cases_top7_outside_china")

# Using confirmed_cases_top7_outside_china, draw a line plot of
# cum_cases vs. date, grouped and colored by country
ggplot(data=confirmed_cases_top7_outside_china,aes(x=date,y=cum_cases,color=country))+geom_line()