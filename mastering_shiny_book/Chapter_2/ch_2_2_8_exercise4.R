library(shiny)

ui <- fluidPage(
    selectInput("letter", "Letter", c("Choose one" = "", LETTERS)),
    
    selectInput("choice_group", 
                label = "Choice by group", 
                choices = list(
                    "Group 1" = list("Option 1.1" = "opt1_1", "Option 1.2" = "opt1_2"),
                    "Group 2" = list("Option 2.1" = "opt2_1", "Option 2.2" = "opt2_2"),
                    "Group 3" = list("Option 3.1" = "opt3_1", "Option 3.2" = "opt3_2")
                ) , 
                multiple = TRUE
                )
    
)
  

server <- function(input, output, session) {
  
}

shinyApp(ui, server)