library(shiny)
shinyServer(function(input, output) {

   # datasetInput = c(input$slider1, input$slider2, input$num2[1], input$slider3, input$num[1])

  
    

    output$text1 <- renderText({ 
      paste("You have selected", input$num2[1])
    })
    output$plot1 <- renderPlot({
      hist(rnorm(input$slider1))
    })
})