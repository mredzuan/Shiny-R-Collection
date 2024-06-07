library(shiny)

ui <- fluidPage(
    p("Hello World !")
)


server <- function(input, output){
    
}


shinyApp(ui, server)