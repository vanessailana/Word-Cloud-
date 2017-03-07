#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  tags$head(
    tags$style(HTML("
     @import url('https://fonts.googleapis.com/css?family=Diplomata+SC');
      
      h1 {
        font-family: 'Lobster';
        font-weight: 500;
        line-height: 1.1;
        color: black;
      }
     
      body {
      background: #4CB8C4; /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #4CB8C4 , #3CD3AD); /* Chrome 10-25, Safari 5.1-6 */
                    background: linear-gradient(to left, #4CB8C4 , #3CD3AD); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                    
      }
    p{
    font-size:20px;
    }

    "))
  ),
  
  
  # Application title
  headerPanel("Word Cloud"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot"),headerPanel('Description of Application'),p( 'A word cloud is an image composed of words in a particular text or subject. The size of each word indicates its frequency or importance.
                                        The purpose of This application is to be a simple word cloud generator. ')
    )
  )
))
