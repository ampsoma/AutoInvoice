library(shiny)

shinyUI(pageWithSidebar(

  # Application title
  headerPanel("AUTOINVOICE")

  sidebarPanel(
      sliderInput("wg", "wage",
                  min = 1,
                  max = 100,
                  value = 20
                  )
              )
  mainPanel("l")
))