library(shiny)

ui <- fluidPage(
    numericInput("count", label = "Number of values", value = 100)
)


server <- function(input, output, session){
    
    #This will failed as it was not in reactive consumer
    #message("The value of input$count is ", input$count)
    
    observe(
        message("The value of input$count is ", input$count)
    )
}


shinyApp(ui, server)