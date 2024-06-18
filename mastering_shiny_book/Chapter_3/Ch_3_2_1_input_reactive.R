library(shiny)

ui <- fluidPage(
    numericInput("count", label = "Number of values", value = 100)
)


server <- function(input, output, session){
    
    #Will get error as we not able to modify read only reactive object
    input$count <- 10
}


shinyApp(ui, server)