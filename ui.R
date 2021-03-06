library(shiny)
shinyUI(fluidPage(
  titlePanel("Predict Orange Tree Age From Circumference"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderCirc", "What is the circumference of the orange tree?", 20, 250, value = 115),
      checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
      checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE),
      checkboxInput("showModel3", "Show/Hide Model 3", value = TRUE)
    ),
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("Tree Age App", 
                    plotOutput("plot1"),
                    h3("Predicted age using Tree 1 data:"),
                    textOutput("pred1"),
                    h3("Predicted age using Tree 2 data:"),
                    textOutput("pred2"),
                    h3("Predicted age using data for Trees 1 through 5:"),
                    textOutput("pred3")
                  ),
                  tabPanel("Documentation", 
                           h2("Prediction Model"),
                           p("This App predicts the age of an orange tree based on its trunk circumference."),
                           h2("Dataset"),
                           p("The prediction model uses the Orange dataset in the R datasets package. The
                             dataset shows growth over time for five orange trees."),
                           a(href = "https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/Orange.html", 
                                    "Orange dataset"),
                           h2("How to Use the App"),
                           p("Measure the circumference of your orange tree in millimeters. Input your measurement
                             into the slider and the models will predict your tree's age in days. Models 1 and 2 use only one 
                             orange tree's data to predict age, while Model 3 uses all five orange trees, so is 
                             probably the best model."),
                           h2("Background"),
                           p("This App is a project for the Developing Data Products course in Coursera's Data Science Specialization:"),
                           a(href = "https://www.coursera.org/learn/data-products", "Developing
                             Data Products"),
                           h2("More Information"),
                           p("Here is a slide presentation of the App:"), 
                           a(href = "https://greenandgold.github.io/orangeApp/index.html","Slide presentation"),
                           p("Here is the code for the App:"), 
                           a(href = "https://github.com/greenandgold/orangeApp", "Code")
                           )
      )
    )
  )
))