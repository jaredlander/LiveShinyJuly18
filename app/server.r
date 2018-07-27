library(shiny)
library(ggplot2)
library(magrittr)
library(leaflet)

pizza <- jsonlite::fromJSON('FavoriteSpots.json') %>% 
    tidyr::unnest()

shinyServer(function(input, output, session){
    
    output$DisplayState <- renderText(input$StateSelector)
    
    output$CarHist <- renderPlot({
        ggplot(mtcars, aes_string(x=input$CarColumn)) + 
            geom_histogram()
    })
    
    output$PizzaTable <- DT::renderDataTable({
        DT::datatable(pizza, rownames=FALSE)
    })
    
    output$PizzaMap <- renderLeaflet({
        leaflet() %>% 
            addTiles() %>% 
            addMarkers(
                lng = ~ longitude, lat = ~ latitude,
                popup = ~ Name,
                data=pizza %>% 
                    dplyr::slice(
                        as.integer(
                            c(input$PizzaTable_rows_selected
                            )
                        )
                    )
            )
    })
})
