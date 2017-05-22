library(shiny)
shinyServer(function(input, output) {
  OrangeTree1 <- Orange[Orange$Tree == 1,]
  OrangeTree2 <- Orange[Orange$Tree == 2,]
  model1 <- lm(age ~ circumference, data = OrangeTree1)
  model2 <- lm(age ~ circumference, data = OrangeTree2)
  model3 <- lm(age ~ circumference, data = Orange)
  model1pred <- reactive({
    circInput <- input$sliderCirc
    predict(model1, newdata = data.frame(circumference = circInput))
  })
  model2pred <- reactive({
    circInput <- input$sliderCirc
    predict(model2, newdata = data.frame(circumference = circInput))
  })
  model3pred <- reactive({
    circInput <- input$sliderCirc
    predict(model3, newdata = data.frame(circumference = circInput))
  })
  output$plot1 <- renderPlot({
    circInput <- input$sliderCirc
    plot(Orange$circumference, Orange$age, xlab = "Orange tree circumference (mm)",
         ylab = "Orange tree age (days)", bty = "n", pch = 16,
         xlim = c(20, 250),  ylim = c(100, 1600))
    if(input$showModel1){
      abline(model1, col = "red", lwd = 2)
    }
    if(input$showModel2){
      abline(model2, col = "blue", lwd = 2)
    }
    if(input$showModel3){
      abline(model3, col = "green", lwd = 2)
    }
    legend(175, 500, c("Model 1 Prediction", "Model 2 Prediction", "Model 3 Prediction"), pch = 16,
           col = c("red", "blue", "green"), bty = "n", cex = 1.2)
    points(circInput, model1pred(), col = "red", pch = 16, cex = 2)
    points(circInput, model2pred(), col = "blue", pch = 16, cex = 2)
    points(circInput, model3pred(), col = "green", pch = 16, cex = 2)
  })
  output$pred1 <- renderText({
    model1pred()
  })
  output$pred2 <- renderText({
    model2pred()
  })
  output$pred3 <- renderText({
    model3pred()
  })
})
