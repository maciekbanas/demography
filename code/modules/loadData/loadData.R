loadDataUI <- function(id) {
  ns <- NS(id)
  tagList(
  
  )
}

loadDataServer <- function(id, r) {
  moduleServer(
    id,
    function(input, output, session) {
      
      observe({
        TotalFertilityRateid <- "tgs00100"
        dataTotalFertilityRate <- eurostat::get_eurostat(TotalFertilityRateid) %>% data.table()
        dataTotalFertilityRate[, country := substr(geo,1,2)]
        r$dataTotalFertilityRate <- dataTotalFertilityRate
          
      })
      
    }
  )
}