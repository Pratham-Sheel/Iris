library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Select Species"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Different species have different Sepals and Petal sizes"),
      
      helpText("A graphic of the sizes of the Sepal and Petal can be easily created"),
      
      selectInput("spc", "Choose a Specie:", choices = c('virginica','versicolor','setosa')),
      selectInput("spc1", "Choose Sepal Or Petal:", choices = c('Sepal','Petal'))
      
    ),
    
    mainPanel(
      plotOutput("plot")
    )
  )
))