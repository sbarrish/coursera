library(shiny)

shinyServer(
  function(input, output) {
    
    output$life <- renderPrint({2015+(81 - input$male*2 + input$exercise*0.1 - input$age)})
    
    output$exercise <- renderPrint({input$exercise})
    output$male <- renderPrint({input$male})
    output$age <- renderPrint({input$age})
  })
