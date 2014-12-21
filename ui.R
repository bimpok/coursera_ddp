library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("EMI CALCULATOR"),
  sidebarPanel(
    numericInput('amt','Loan Amount',10000,step=1),
    numericInput('rte','Interest Rate',5,step=1),
    numericInput('tme','Term(Year)',5,step=1),
    submitButton('Calculate EMI')
    ),
  mainPanel(
    h3('Your EMI Calculation'),
    h4('Your Principal Amount'),
    verbatimTextOutput("amount"),
    h4('Payback Period in Years'),
    verbatimTextOutput("time"),
    h4('Interest Rate'),
    verbatimTextOutput("rate"),
    h4('Your Monthly Payment'),
    verbatimTextOutput("emi")
    )
))
