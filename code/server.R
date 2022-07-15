server <- function(input, output, session) {
  source("libraries.R")
  source("modules/loadData/loadData.R")
  source("modules/plots.R")
  source("modules/tables.R")
  source("modules/select.R")
  
  r <- reactiveValues()
  
  loadDataServer("loadData", r)
  tablesServer("tableTFR", r)
  selectServer("selectTFR", r)
  
}
