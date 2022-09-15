

source("./code/loadLibraries.R")

readFile <- read_excel('./data/map_variables.xlsx')

for (i in readFile$item) {
  # crea variables para cada mapa segun el archivo map_variables.xlsx
  pathFile = readFile[i,2]
  scopeArea = readFile[i,3]
  variableMap = readFile[i,4]
  mapTitle = readFile[i,5]
  legendTitle = readFile[i,6]
  authorCredits = readFile[i,7]
  pngFile = readFile[i,8]
  labelFile = readFile[i,9] 
  breakFile = readFile[i,10]
  
  # convierte los breaks y labels en vectores para el mapa
  labelFile = unlist(strsplit(labelFile$labels, ","))
  breakFile = as.numeric(unlist(strsplit(breakFile$breaks, ",")))
  
  source("./code/importData.R")
  source("./code/templateMap.R")
  source("./code/exportMap.R")
}

