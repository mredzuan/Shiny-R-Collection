library(ggplot2)


freqpoly <- function(x1, x2, binwidth = 0.1, xlim = c(-3, 3)) {
    df <- data.frame(
        x = c(x1, x2),
        g = c(rep("x1", length(x1)), rep("x2", length(x2)))
    )
    
    ggplot(df, aes(x, colour = g)) +
        geom_freqpoly(binwidth = binwidth, size = 1) +
        coord_cartesian(xlim = xlim)
}


t_test <- function(x1, x2) {
    test <- t.test(x1, x2)
    
    # use sprintf() to format t.test() results compactly
    sprintf(
        "p value: %0.3f\n[%0.2f, %0.2f]",
        test$p.value, test$conf.int[1], test$conf.int[2]
    )
}



ui <- fluidPage(
    fluidRow(
        column(3, 
               numericInput("lambda1", label = "lambda1", value = 3),
               numericInput("lambda2", label = "lambda2", value = 5),
               numericInput("n", label = "n", value = 1, min = 0)
        ),
        column(9, plotOutput("hist"))
    )
)


server <- function(input, output, session) {
    timer <- reactiveTimer(500)
    
    x1 <- reactive({
        timer()
        rpois(input$n, input$lambda1)
    })
    x2 <- reactive({
        timer()
        rpois(input$n, input$lambda2)
    })
    
    output$hist <- renderPlot({
        freqpoly(x1(), x2(), binwidth = 1, xlim = c(0, 40))
    }, res = 96)
}

shinyApp(ui, server)
