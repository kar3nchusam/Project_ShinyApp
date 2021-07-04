#
# This is the server logic of a Shiny web application. You can run the

library(shiny)

# Define server logic required to draw a histogram and display the summary the the dataset
shinyServer(function(input, output) {
    
    datasetInput <- reactive ({
        switch(input$dataset, 
               "cars" = cars,
               "rock" = rock)
    })
    
    output$caption <- renderText ({
        input$caption
    })
    
    output$summary <- renderPrint({
        dataset <- datasetInput()
        summary(dataset)
    })
    
    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        dataset1 <- datasetInput()
        first_variable    <- dataset1[,1]
        bins <- seq(min(first_variable), max(first_variable), length.out = input$bins + 1)
        
        # draw the histogram with the specified number of bins
        hist(first_variable, breaks = bins, col = 'darkgray', border = 'white')
    })
    
    output$hist <- renderPlot({
        # generate bins based on input$bins from ui.R
        dataset2 <- datasetInput()
        second_variable    <- dataset2[,2]
        bins <- seq(min(second_variable), max(second_variable), length.out = input$bins + 1)
        
        # draw the histogram with the specified number of bins
        hist(second_variable, breaks = bins, col = 'darkgray', border = 'white')
    })
})