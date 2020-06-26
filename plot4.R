# Filter for China, from Feb 15
china_after_feb15 <- confirmed_cases_china_vs_world %>% filter(is_china=="China" & date>="2020-02-15")


# Using china_after_feb15, drawn a line plot cum_cases vs. date
# Added a smooth trend line using linear regression, no error bars
ggplot(data=china_after_feb15,aes(x=date,y=cum_cases)) +
  geom_line() +
  geom_smooth(method="lm",se=FALSE) +
  ylab("Cumulative confirmed cases")