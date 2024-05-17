library(shiny)

ui <- fluidPage(
    textInput("name", "What is your name?"),
    passwordInput("password", "What is your password"),
    textAreaInput("story", "Tell me about yourself", rows = 3, placeholder = "Your story", )
)


server <- function(input, output){
    
}


shinyApp(ui, server)