library(shiny)

fluidPage(
  titlePanel("MPG Explorer"),
  sidebarPanel(
    sliderInput('wt', 'Weight in lbs', value = 2500, min=1000, max=5000),
    selectInput('cyl', 'Number of cylinders', sort(unique(mtcars$cyl))),
    checkboxInput('am', 'Manual transmission'),
    h3('How to use:'),
    helpText('Set weight, number of cylinders and transmission type of the car to get the estimated MPG') 
  ),
  
  mainPanel(
    h4('Entered weight of the car'),
    verbatimTextOutput("wt"),
    h4('Entered number of cylinders'),
    verbatimTextOutput("cyl"),
    h4('Entered transmission'),
    verbatimTextOutput("transmission"),
    h4('Predicted MPG'),
    verbatimTextOutput("mpg")
  )
)