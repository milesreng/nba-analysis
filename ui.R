data <- read.csv("data/nbaallelo.csv")

intro_panel <- tabPanel(
  "Introduction",
  h1("Investigating NBA Basketball: The Most Dominant Decades and Teams Throughout History"),
  h3("Background and Significance"),
  p("The NBA has characterized sports culture in the United States ever since 
  its initial formation in 1949 (Britannica). Throughout the following 83 years, 
  the league has grown in membership, audience, and talent, drawing viewers 
  from all around the world. Because of its massive viewership, fans engage in 
  ongoing debates about the best teams, players, and seasons of all time. Though
  quantitative statistics cannot form an undisputed, objective answer to
  any of these questions, common metrics may provide a pathway for fans to
  better engage with and understand the sport throughout its history."),
  h3("Source"),
  p("This data is originally from basketball-reference.com, adapted by 
  fivethirtyeight. It has been updated for all NBA games between 1947 and 2015."),
  h3("Research Question"),
  p("Which decade of basketball can be considered the \"best\" throughout the 
  history of the NBA, and within that decade, which franchise can be considered 
  the most and least \"dominant\"? Additionally, how does the game location 
  contribute to the least and most dominant teams' success (and how may the 
  magnitude of this contribution differ)? The words \"best\" and \"dominant\" 
  can be interpreted in many different ways. In the case of our question, we 
  will use avg. points per game as a means of uncovering the best decade, and 
  elo ratings, avg. points per game, point differentials, and number of playoff 
  games as a means of uncovering the most and least dominant teams.")
)

expl_sb_content <- sidebarPanel(
  
)

expl_main_content <- mainPanel(
  plotOutput("plot1"),
  p("Figure 1 illustrates that the 1960s led in mean points per team per
  game. The above visualization provides a glimpse at the distribution of
  average points per team per game over time. This visualization
  categorizes the \"best\" decade of basketball based on mean points per
  team per game as the 1960s.")
)

expl_panel <- tabPanel(
  "Exploratory Data Analysis",
  expl_main_content
)

ui <- navbarPage(
  "NBA Visualizations",
  intro_panel,
  expl_panel
)