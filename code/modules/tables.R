tablesUI <- function(id) {
  ns <- NS(id)
  tagList(
    tableOutput(ns('table'))
  )
}

tablesServer <- function(id, r) {
  moduleServer(
    id,
    function(input, output, session) {
      
      output$table <- renderTable({
        req(r$dataTotalFertilityRate)
        r$dataTotalFertilityRate %>% filter(geo == .env$r$selectedCountry)
      })
    }
  )
}