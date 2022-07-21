plotsUI <- function(id) {
  ns <- NS(id)
  tagList(
    div(echarts4rOutput(ns("plotTFR")))
  )
}

plotsServer <- function(id, r) {
  moduleServer(
    id,
    function(input, output, session) {
      
      data <- reactive({
        r$dataTotalFertilityRate %>% filter(geo == .env$r$selectedCountry)
      })
      
      output$plotTFR <- renderEcharts4r({
        req(r$dataTotalFertilityRate)
        
        data() |>
          e_charts(time) |>
          e_line(values)
        
      })
      
    }
  )
}