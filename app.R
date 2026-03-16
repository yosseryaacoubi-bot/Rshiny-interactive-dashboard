library(shiny)

# Load the dataset
poverty_data <- read.csv('poverty_data.csv')

# UI for the application
ui <- fluidPage(
    titlePanel('Poverty Analysis in Tunisia'),
    sidebarLayout(
        sidebarPanel(
            selectInput('region', 'Select Region:', choices = unique(poverty_data$region)),
            sliderInput('year', 'Select Year:', min(min(poverty_data$year)), max(max(poverty_data$year)), value = 2020)
        ),
        mainPanel(
            plotOutput('povertyPlot'),
            tableOutput('povertyTable')
        )
    )
)

# Server logic
server <- function(input, output) {
    filtered_data <- reactive({
        poverty_data[poverty_data$region == input$region & poverty_data$year == input$year, ]
    })

    output$povertyPlot <- renderPlot({
        data <- filtered_data()
        barplot(data$poverty_rate, names.arg = data$sub_region, col = 'blue',
                main = paste('Poverty Rate in', input$region, 'for year', input$year),
                ylab = 'Poverty Rate')
    })

    output$povertyTable <- renderTable({
        filtered_data()
    })
}

# Run the application
shinyApp(ui = ui, server = server