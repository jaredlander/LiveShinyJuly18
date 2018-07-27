library(shiny)

navbarPage(
    title='Our First Shiny App',
    selected='Simple Plot',
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
    ),
    tabPanel(
        title='Simple Plot',
        fluidRow(
            column(
                width=3,
                selectInput(
                    inputId='CarColumn',
                    label='Please choose a column to plot',
                    choices=names(mtcars)
                )
            ),
            column(
                width=9,
                plotOutput(outputId='CarHist')
            )
        )
    )
)