
library(shiny)


ui <- fluidPage(
    textInput("name", "What's your name?"),
    numericInput("age", "How old are you?", value = NA),
    
    tableOutput("mortgage"),  
    textOutput("greeting")
)




server <- function(input, output){
    
    output$greeting <- renderText({
        paste0("Hello ", input$name)
    })
    
    
    output$histogram <- renderPlot({
        hist(rnorm(1000))
    }, res = 96)
    
}


shinyApp(ui, server)







