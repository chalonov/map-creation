# importar los datos para unir los .xlsx con los .shp
print('.....loading data')

dataFile <- read_excel(pathFile$archivoDatos)

print('.....loading shape')
shapeFileDep <- st_read('./data/shape/departamentos.shp')
shapeFileMun <- st_read('./data/shape/municipios.shp')

shapeFileDep <- shapeFileDep %>% 
  mutate(ID_ESPACIA = as.numeric(as.character(ID_ESPACIA)))
shapeFileMun <- shapeFileMun %>% 
  mutate(mpios = as.numeric(as.character(mpios)))

if (scopeArea == "departamental") {
  dataShapeMap = inner_join(x = shapeFileDep, y = dataFile, by = c('ID_ESPACIA' = 'CodDepto'))
} else if (scopeArea == "municipal") {
  dataShapeMap = inner_join(x = shapeFileMun, y = dataFile, by = c('mpios' = 'CodMun'))
}

print('.....data imported')