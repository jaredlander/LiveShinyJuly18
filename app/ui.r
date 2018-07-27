library(shiny)

navbarPage(
    title='Our First Shiny App',
    tabPanel(
        title='First Page',
        'Hi'
    ),
    tabPanel(
        title='Second Page',
        'Hello, there'
    )
)