library(shiny)

ui <- fluidPage(
  actionButton("click", "Click me!", class = "btn-danger disabled"),
  actionButton("drink", "Drink me", icon = icon("cocktail"), class = "btn-lg btn-success"),
  actionButton("Just a link", "Please click this link!", class = "btn btn-link")
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)