ui <- fluidPage(
    fileInput("upload", "Upload your file:")
)


server <- function(input, output){
    
}


shinyApp(ui, server)