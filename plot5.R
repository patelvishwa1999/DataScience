# Filter confirmed_cases_china_vs_world for not China
not_china <- confirmed_cases_china_vs_world %>% filter(!is_china=="China")

# Using not_china, draw a line plot cum_cases vs. date
# Add a smooth trend line using linear regression, no error bars
plt_not_china_trend_lin <- ggplot(not_china,aes(x=date,y=cum_cases)) +
  geom_line() +
  geom_smooth(method="lm",se=FALSE) +
  ylab("Cumulative confirmed cases")

# See the result
plt_not_china_trend_lin 