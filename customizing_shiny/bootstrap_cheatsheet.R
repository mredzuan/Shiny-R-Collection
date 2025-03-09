# Bootstrap cheat sheet for Shiny App-----

# LIBRARIES---------
library(shiny)
library(tidyverse)
library(plotly)

# UI-----------

ui <- fluidPage(
    title = "Bootsrap Cheatsheet for Shiny App",
    responsive = TRUE,
    
    div(
        class = "container-fluid",
        id = "page",
        
        ## Header-------
        h1(class = "page-header",  "Bootstrap Cheat Sheet", tags$small(tags$em("for shiny app"))),
        
        p(class = "lead",
            "This is a cheat sheet for bootstrap in shiny app."
          ),
        
        # 1.0 Bootstrap Grid System-----------
        h2("1.0 Bootstrap Grid System"),
        
        div(
            class = "container text-center",
            fluidRow(
                column(
                    width = 3,
                    class = "bg-primary",
                    p("This is a column with width 3")
                ),
                column(
                    width = 3,
                    class = "bg-success",
                    p("This is a column with width 3")
                ),
                column(
                    width = 3,
                    class = "bg-info",
                    p("This is a column with width 3")
                ),
                column(
                    width = 3,
                    class = "bg-warning text-white",
                    p("This is a column with width 3")
                )
                
            ),
            
            fluidRow(
                column(
                    width = 3,
                    class = "bg-primary",
                    p("Grid Width 3")
                ),
                column(
                    width = 9,
                    class = "bg-info",
                    p("Grid Width 9")
                )
            ),
            
            fluidRow(
                column(
                    width = 6,
                    class = "bg-warning",
                    p("Grid with 6")
                ),
                column(
                    width = 6,
                    class = "bg-info",
                    p("Grid with 6")
                )
            ), 
            
            fluidPage(
                column(
                    width = 2,
                    class = "bg-warning",
                    p("Grid with 2")
                ),
                column(
                    width = 5,
                    class = "bg-info",
                    p("Grid with 5")
                )
            )
            
        ), # End of container 1
        
        hr(),
        
        # 2.0 Working With Text-----------
        h2("2.0 Working With Text"),
        
        div(style = "height: 400px;",
        ) #End of container 2
    )
    
)





# SERVER-----------

server <- function(input, output, session) {
    
}





# Run the application
shinyApp(ui, server)




#TO DO--------------
#Stop here: https://university.business-science.io/courses/631137/lectures/11496244
