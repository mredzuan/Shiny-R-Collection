library(shiny)

ui <- fluidPage(
  textAreaInput("name", label = "", placeholder = "Your name")
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)