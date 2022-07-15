selectUI <- function(id) {
  ns <- NS(id)
  tagList(
    div(uiOutput(ns("selectCountryInput"))),
    div(uiOutput(ns("selectAgeInput")))
  )
}

selectServer <- function(id, r) {
  moduleServer(
    id,
    function(input, output, session) {
      
      output$selectCountryInput <- renderUI({
        
        selectInput(session$ns("selectCountry"), "Select country: ",
                    unique(r$dataTotalFertilityRate$country))
        
      })
      
      observeEvent(input$selectCountry, {
        
        r$selectedCountry <- input$selectCountry
        
      })
      
    }
  )
}