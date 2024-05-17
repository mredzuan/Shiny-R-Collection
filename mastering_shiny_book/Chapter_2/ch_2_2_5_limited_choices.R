library(shiny)

animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")

ui <- fluidPage(
    
    selectInput("state", "What's your favourite state?", choices = state.name, multiple = TRUE),
    radioButtons("animal", "What's your favorite animal?", choices = animals, inline = TRUE),
    radioButtons("rb", "Choose one:",
                 choiceNames = list(
                     icon("angry"),
                     icon("smile"),
                     icon("sad-tear")
                 ),
                 choiceValues = list("angry", "happy", "sad")
                 ),
    checkboxGroupInput("animal2", "What animals do you like ?", choices = animals),
    checkboxInput("cleanup", "Clean up?", value = TRUE),
    checkboxInput("shutdown", "Shutdown?", value = FALSE),
    radioButtons("dist", "Distribution type:",
                 c("Normal" = "norm",
                   "Uniform" = "unif",
                   "Log-normal" = "lnorm",
                   "Exponential" = "exp")
                 )
   
)


server <- function(input, output){
    
}


shinyApp(ui, server)