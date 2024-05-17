library(shiny)

ui <- fluidPage(
   dateInput("dob", "When were you born ?"),
   dateRangeInput("holiday", "When do you want to go to holiday ?")
   
)


server <- function(input, output){
    
}


shinyApp(ui, server)