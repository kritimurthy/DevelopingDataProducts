library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Calculate BMI"),
    
    sidebarPanel(
      numericInput('weight','Weight in lbs',value = 130,min = 0),
      numericInput('height','Height in inches',value = 67,min=0),
      submitButton('Submit'),
      h4('Given your weight and height, your BMI is'),
      verbatimTextOutput("prediction"),
      h4('Given your BMI, you are:'),
      verbatimTextOutput("prediction2")
      
    ),
    
    mainPanel(
      h3('About this app'),
      p('This app asks for two inputs - your weight (in lbs) and your height (in inches). It then calculates your BMI using a simple formula: BMI = (weight*703/height^2). Your BMI is then displayed in the sidebar.'),
      p('The app goes one step further and analyzes your BMI as well. Going by widely accepted standards, if your BMI is less than 18.5, you are considered underweight. If your BMI is between 18.5 and 25, you are of normal weight. A BMI between 25 and 30 indicates that you are overweight whereas a BMI of 30 or greater means it is time to hit the treadmill. You are obese.')

      )
    )
  )