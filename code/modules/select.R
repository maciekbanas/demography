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
                    unique(r$dataTotalFertilityRate$geo))
        
      })
      
      observeEvent(input$selectCountry, {
        
        r$selectedCountry <- input$selectCountry
        
      })
      
      # output$selectAgeInput <- renderUI({
      #   
      #   selectInput(session$ns("selectAge"), "Select age: ",
      #               unique(r$dataTotalFertilityRate$age))
      #   
      # })
      # 
      # observeEvent(input$selectAge, {
      #   
      #   r$selectedAge <- input$selectAge
      #   
      # })
      
    }
  )
}