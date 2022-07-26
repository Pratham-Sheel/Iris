library(shiny)
library(datasets)
library(plotly)
data(iris)
irisdataset <- iris

shinyServer(function(input, output) {
  output$plot <- renderPlot({
    plant <- input$spc
    var<-input$spc1
    data <- subset(irisdataset, iris$Species == plant)   
    if(var=='Petal'){
      plot(data$Petal.Length, data$Petal.Width, main = "A plot of the Petal size", xlab = "Petal Length", 
           ylab = "Petal Width",  xaxt="n")
    }
    else{
    plot(data$Sepal.Length, data$Sepal.Width, main = "A plot of the Sepal size", xlab = "Sepal Length", 
         ylab = "Sepal Width",  xaxt="n")
    }
    
  })
})