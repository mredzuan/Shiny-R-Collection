library(shiny)

ui <- fluidPage(
    textInput("name", "What is your name?"),
    textOutput("greeting")
)


server <- function(input, output){
    output$greeting <- renderText({
        paste0("Hello ", input$name)
        
    })
    
    observe(
        message("the value if input is", input$name)
    )
}


shinyApp(ui, server)