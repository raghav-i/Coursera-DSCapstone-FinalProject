library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)

shinyUI(
  fluidPage(
    titlePanel("Next Word Predict - Raghav"),
    tags$style(HTML("
      body {
        background: linear-gradient(to bottom right, #4e54c8, #8f94fb);
        color: white;
        font-family: 'Arial', sans-serif;
        margin: 0; /* Remove default body margin */
        padding: 0; /* Remove default body padding */
        height: 100vh; /* Set body height to viewport height */
      }
      .navbar {
        background-color: #4e54c8 !important;
        color: white !important;
      }
      .navbar-default .navbar-brand,
      .navbar-default .navbar-nav > li > a {
        color: white !important;
      }
      .sidebar {
        background-color: #4e54c8 !important;
        color: white !important;
      }
      .form-control {
        background-color: transparent !important;
        border-color: white !important;
        color: white !important;
      }
      .form-control::placeholder {
        color: white !important;
      }
      .slider-selection {
        background: #4e54c8 !important;
      }
      .slider-handle {
        background: #ffffff !important;
        border: 2px solid #4e54c8 !important;
      }
      .main-container {
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.3);
        border-radius: 10px;
        margin: 50px auto; /* Center the main container */
        max-width: 800px; /* Set maximum width for better readability */
      }
      .description-container {
        padding: 10px;
        background-color: rgba(0, 0, 0, 0.5);
        border-radius: 5px;
        color: white;
        margin-top: 20px;
        width: 400px;
        position: absolute;
        top: 18.7%;
        right: 350px;
        transform: translateY(-50%);
      }
    ")),
    mainPanel(
      div(class = "main-container",
          fluidRow(
            column(6,
                   textInput("userInput",
                             "Enter a word or phrase:",
                             value = "",
                             placeholder = "Enter text here")),
            column(6,
                   sliderInput("numPredictions",
                               "Number of Predictions:",
                               value = 1, min = 1, max = 3, step = 1))
          ),
          fluidRow(
            column(6,
                   h4("Input text"),
                   verbatimTextOutput("userSentence"),
                   br(),
                   h4("Predicted words"),
                   verbatimTextOutput("prediction1"),
                   verbatimTextOutput("prediction2"),
                   verbatimTextOutput("prediction3")
            )
          )
      )
    ),
    div(class = "description-container",
        h4("Description"),
        p("Next Word Prediction is a web application that predicts the next word in a sentence or phrase based on user input. It utilizes N-gram models for accurate word suggestions, assisting users in writing tasks and text completion.")
    )
  )
)
