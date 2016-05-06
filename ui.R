library(shiny)
shinyUI(fluidPage(
  titlePanel("Elevator Express"),
    
    sidebarLayout(
      sidebarPanel(
        helpText("Your Elevator System"),
        sliderInput("slider1", label = "Number of floors",
                    min = 1, max = 99, value = 50),
        sliderInput("slider2", label = "Number of elevators",
                    min = 1, max = 99, value = 50),
        numericInput("num", 
                 label = "Travel Time Between Floors (Minutes)", 
                 value = 1),
        numericInput("num2", 
                     label = "Max Number of People Per Elevator (integer values greater than 0)", 
                     value = 1),
        sliderInput("slider3", label = "Floor that the Elevator is Idle On (cannot exceed number of floors)",
                    min = 1, max = 99, value = 50),
        
        br(),
        submitButton("Submit"),
        p("Click the button to update the plots. Please wait a few seconds.")
    ),
  
  
      mainPanel(
        verbatimTextOutput("text1"),
        tabsetPanel(
          tabPanel("Plot1", plotOutput("plot1")), 
          tabPanel("Plot2", plotOutput("plot2")), 
          tabPanel("Plot3", plotOutput("plot3")), 
          tabPanel("Plot4", plotOutput("plot4")), 
          tabPanel("Plot5", plotOutput("plot5")) 
        )
      )
  
  )
))
