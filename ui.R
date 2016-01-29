library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Auto Invoice"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      helpText("this is help text"),
      textInput("job","Job"),
      textInput("project","Project"),
      sliderInput("wage",
                  "Hourly Wage",
                  min = 1,
                  max = 50,
                  value = 20),
      dateRangeInput("dates",
                     "Date Range",
                     start = Sys.Date()-10,
                     end = Sys.Date()+10),
      submitButton("submit"),
      downloadButton("Download Invoice")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))