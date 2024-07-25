# app.R

library(shiny)

ui <- fluidPage(
    titlePanel("Reactivity Function Family in Shiny"),
    
    sidebarLayout(
        sidebarPanel(
            numericInput("num", "Enter a number:", 1),
            actionButton("btn", "Submit"),
            actionButton("reset", "Reset"),
            textOutput("btn_clicks")
        ),
        
        mainPanel(
            h3("Reactivity Outputs"),
            textOutput("reactive_output"),
            textOutput("reactiveValues_output"),
            textOutput("observe_output"),
            textOutput("eventReactive_output"),
            textOutput("observeEvent_output")
        )
    )
)

server <- function(input, output, session) {
    
    # reactive
    reactive_number <- reactive({
        input$num
    })
    
    output$reactive_output <- renderText({
        paste("Reactive number:", reactive_number())
    })
    
    # reactiveValues
    rv <- reactiveValues(counter = 0)
    
    output$reactiveValues_output <- renderText({
        paste("ReactiveValues counter:", rv$counter)
    })
    
    # observe
    observe({
        # This observe increments counter when num is updated
        rv$counter <- rv$counter + 1
    })
    
    output$observe_output <- renderText({
        paste("Observe counter:", rv$counter)
    })
    
    # eventReactive
    event_reactive_number <- eventReactive(input$btn, {
        input$num
    })
    
    output$eventReactive_output <- renderText({
        paste("Event reactive number:", event_reactive_number())
    })
    
    # observeEvent
    observeEvent(input$btn, {
        rv$counter <- rv$counter + 1
    })
    
    output$observeEvent_output <- renderText({
        paste("ObserveEvent counter:", rv$counter)
    })
    
    # Handling reset button
    observeEvent(input$reset, {
        rv$counter <- 0
    })
    
    # Handling button clicks count
    btn_clicks <- reactiveVal(0)
    
    observeEvent(input$btn, {
        btn_clicks(btn_clicks() + 1)
    })
    
    output$btn_clicks <- renderText({
        paste("Button clicks:", btn_clicks())
    })
    
    
    observe({
        
         print(rv$counter)
    })
   
}

shinyApp(ui, server)
