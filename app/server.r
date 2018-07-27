library(shiny)
library(ggplot2)

shinyServer(function(input, output, session){
    
    output$DisplayState <- renderText(input$StateSelector)
    
    output$CarHist <- renderPlot({
        ggplot(mtcars, aes_string(x=input$CarColumn)) + 
            geom_histogram()
    })
    
})
