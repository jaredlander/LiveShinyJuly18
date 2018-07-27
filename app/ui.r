library(shiny)

navbarPage(
    title='Our First Shiny App',
    selected='State Info',
    tabPanel(
        title='First Page',
        'Hi'
    ),
    tabPanel(
        title='Second Page',
        'Hello, there'
    ),
    tabPanel(
        title='State Info',
        selectInput(
            inputId='StateSelector',
            label='Choose a state',
            choices=list('NY', 'NJ', 'MA', 'TX')
        ),
        textOutput(
            outputId='DisplayState'
        )
    )
)