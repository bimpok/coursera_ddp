library(shiny)

calcEMI <- function(amt,tme,rte) {
  R <- (rte/12)/100
  e <- amt*R*((1 + R)^(tme*12))/(((1 + R)^(tme*12)) - 1)
  e
}

calcInt <- function(amt,tme,rte) amt*tme*rte/100
calcTotalInt <- function(amt,tme,rte) amt*tme*rte/100

shinyServer(
  function(input,output) {
    output$amount <- renderPrint({input$amt})
    output$time <- renderPrint({input$tme})
    output$rate <- renderPrint({input$rte})
    output$emi <- renderPrint({calcEMI(input$amt,input$tme,input$rte)})   
  }
)

