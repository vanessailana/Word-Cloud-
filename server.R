#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

function(input,output,session) {
  
  #define a reactive expression for the document term matrix
   terms <- reactive({
     
     input$update
     #change book when update;
     
     
   })
}
