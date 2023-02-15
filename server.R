source("ui.R")

server <- function(input, output) {
  output$plot1 <- renderPlot({
    vis_decades %>%
      ggplot(aes(x = decade, y = mean_pts)) +
      geom_bar(stat = "identity") +
      coord_cartesian(ylim=c(60,120)) +
      theme(axis.title = element_text(size = 10),
            plot.title = element_text(size = 12)) +
      labs(title = "FIGURE 1: Mean points per team per NBA game",
           subtitle = "between 1947 and 2015",
           x = "Year",
           y = "Mean Points per Team per Game")
  })
}