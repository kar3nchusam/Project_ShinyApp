
library(shiny)

# Define UI for application that draws a histogram and shows the summary of the data selected
ui <- fluidPage(
    
    # Application title
    titlePanel("Project - Week 4"),
    
    # Sidebar with a slider input for number of bins 
    # 
    sidebarLayout(
        sidebarPanel(
            
            # Input: Text for caption
            textInput(inputId = "caption",
                      label = "Caption",
                      value = "Data Summary"),
            
            selectInput(inputId = "dataset",
                        label = "Choose a dataset",
                        choices = c("cars", "rock")),
            
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            h3(textOutput("caption", container = span)),
            plotOutput("distPlot"),
            plotOutput("hist"),
            verbatimTextOutput("summary")
        )
    )
)