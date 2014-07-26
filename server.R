BMI<-function(weight,height) (weight*703)/(height^2)
health<- function(weight, height) {
  if(((weight*703)/(height^2)) < 18.5) {print("underweight")}
  else if(((weight*703)/(height^2)) < 25) {print("of normal weight")}
  else if(((weight*703)/(height^2)) < 30) {print("overweight")}
  else {print("obese")}
}

shinyServer(
  function(input,output) {
    output$inputValue <- renderPrint({input$weight})
    output$inputValue2 <- renderPrint({input$height})
    output$prediction <- renderPrint({BMI(input$weight,input$height)})
    output$prediction2 <- renderPrint({health(input$weight,input$height)})
  }
  )
