


runs_per_over %>% 
  ggplot(aes(x=overs_remaining, y= total_runs)) +
  geom_point(alpha = .1) +
  geom_smooth()

runs_per_over %>% 
  ggplot(aes(x=total_runs)) +
  geom_density(aes(color = as.factor(start_wickets_remaining))) %>% 
  plotly::ggplotly()

runs_per_over %>% 
  ggplot(aes(x = overs_remaining, y = start_wickets_remaining, z=total_runs)) +
  geom_contour_filled()
geom_density(aes(color = as.factor(start_wickets_remaining))) %
