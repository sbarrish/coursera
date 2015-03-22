shinyUI(
  pageWithSidebar(
    headerPanel("Life Expectancy Calculator"),
    
    sidebarPanel(
      h4('Input your Data'),
      numericInput('age', 'Age', 20),
      checkboxInput('male', 'Are you Male', value=FALSE),
      p('How many hours of exercise do you do per week?'),
      numericInput('exercise', '', 0),
      
      submitButton('Submit')
    ),
    mainPanel(
      h3('Life Expectancy Calculated'),
      h4('You entered:'),
      p('Age'),
      verbatimTextOutput('age'), 
      p('Are you Male'),
      verbatimTextOutput('male'),
      p('Hours of Exercise'),
      verbatimTextOutput('exercise'),
      h4('You will live until:'),
      verbatimTextOutput('life')
      
    )
  ))