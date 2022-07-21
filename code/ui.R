source("./libraries.R")
source("modules/loadData/loadData.R")
source("modules/plots.R")
source("modules/tables.R")
source("modules/select.R")

ui <- semanticPage(
  title = "Demographic processes",
  
  selectUI("selectTFR"),
  plotsUI("plotTFR"),
  tablesUI("tableTFR")
            
           
)