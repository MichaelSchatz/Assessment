


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



plt <- runs_per_over %>% 
  ggplot(aes(x=total_runs)) +
  geom_density(aes(color = as.factor(innings), frame = factor(overs_remaining, levels = c(50:1)))) +
  facet_wrap(~start_wickets_remaining)

plotly::ggplotly(plt) %>% 
  animation_opts(
    easing = "back-out", redraw = FALSE
  ) 


runs_per_over %>% 
  ggplot(aes(x=total_runs)) +
  geom_density(aes(color = as.factor(innings))) %>% 
  plotly::ggplotly()

runs_per_over %>% 
  ggplot(aes(x=start_wickets_remaining, y= total_runs)) +
  geom_point(alpha = .1) +
  geom_smooth()
