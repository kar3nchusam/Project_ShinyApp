ShinyApp Presentation 
========================================================
author: Karen Chu Sam
date: 05.07.2021
autosize: true

Introduction
========================================================

This simple ShinyApp provides the histogram of the first two variables in the dataset selected by the user and a summary of the dataset. 
In this demo version of the ShinyApp the user can select between two datasets: cars and rock. Furthermore, the user can provide his own title to the project. 

Ihe following slides I'll show you an extract of the code in the ui.R


ui.R - File
========================================================


```r
library(shiny)

ui <- fluidPage(
    sidebarLayout(
        sidebarPanel(
            
            # Input: Text for caption
            textInput(inputId = "caption",
                      label = "Caption",
                      value = "Data Summary")
        ),
        mainPanel(
            h3(textOutput("caption", container = span))
            )
    )
)
```


========================================================

Thank you for reviewing my assignment
