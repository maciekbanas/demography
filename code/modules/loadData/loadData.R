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
        TotalFertilityRateid <- "tps00199"
        dataTotalFertilityRate <- eurostat::get_eurostat(TotalFertilityRateid) %>% data.table()
        r$dataTotalFertilityRate <- dataTotalFertilityRate
        # browser()  
      })
      
    }
  )
}