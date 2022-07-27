# importar datos
print('....loading data')

etiquetasExcel <- read_excel('./data/mapasEtiquetas.xlsx')

shapeDEP <- st_read('./data/shape/departamentos.shp')

tasasDEP <- read_excel(etiquetasExcel$archivoDatos)

shapeDEP <- shapeDEP %>% 
  mutate(ID_ESPACIA = as.numeric(as.character(ID_ESPACIA)))


shapeMap <- inner_join(x = shapeDEP, y = tasasDEP, by = c('ID_ESPACIA' = 'codDepto'))

print('....data imported')