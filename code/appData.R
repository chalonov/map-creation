
# DEPARTAMENTAL - DATOS

suicidioDep <- data.frame(dataFile$Departamento, 
                       dataFile$TasaAjustada_Suicidio_Hombres, 
                       dataFile$TasaAjustada_Suicidio_Mujeres,
                       dataFile$TasaAjustada_Suicidio_TotalPoblacion)

intentoDep <- data.frame(dataFile$Departamento, 
                       dataFile$TasaAjustada_IntentoSuicida_Hombres, 
                       dataFile$TasaAjustada_IntentoSuicida_Mujeres,
                       dataFile$TasaAjustada_IntentoSuicida_TotalPoblacion)

intoxicacionDep <- data.frame(dataFile$Departamento, 
                       dataFile$TasaAjustada_IntoxPlaguicidas_Hombres, 
                       dataFile$TasaAjustada_IntoxPlaguicidas_Mujeres,
                       dataFile$TasaAjustada_IntoxPlaguicidas_TotalPoblacion)

depresionDep <- data.frame(dataFile$Departamento, 
                      dataFile$TasaAjustada_DepresionTH_Hombres, 
                      dataFile$TasaAjustada_DepresionTH_Mujeres,
                      dataFile$TasaAjustada_DepresionTH_TotalPoblacion)

colnames(suicidioDep) <- c('Departamento','Tasa Hombres','Tasa Mujeres', 'Total')
colnames(intentoDep) <- c('Departamento','Tasa Hombres','Tasa Mujeres', 'Total')
colnames(intoxicacionDep) <- c('Departamento','Tasa Hombres','Tasa Mujeres', 'Total')
colnames(depresionDep) <- c('Departamento','Tasa Hombres','Tasa Mujeres', 'Total')

# DEPARTAMENTAL - MAPAS
mapPlotAppDepresion <- tm_shape(dataShapeMap) + 
  tm_polygons("TasaAjustada_DepresionTH_TotalPoblacion", 
              id = "Departamento", 
              title = "Depresión",
              breaks = c(0,0.1,200,400,600,800,1000,1200),
              labels = c("0", "1-200", "200-400", "400-600", "600-800", "800-1000", "1000-1200"),
              palette = "viridis")

mapPlotAppIntento <- tm_shape(dataShapeMap) + 
  tm_polygons("TasaAjustada_IntentoSuicida_TotalPoblacion", 
              id = "Departamento", 
              title = "Intento suicida",
              breaks = c(0,0.1,5,10,15,20,25),
              labels = c("0", "1-5", "5-10", "10-15", "15-20", "20-25"),
              palette = "viridis")

mapPlotAppSuicidio <- tm_shape(dataShapeMap) + 
  tm_polygons("TasaAjustada_Suicidio_TotalPoblacion", 
              id = "Departamento", 
              title = "Suicidio",
              breaks = c(0,0.1,5,10,20,30,40),
              labels = c("0", "1-5", "5-10", "10-20", "20-30", "30-40"),
              palette = "viridis")

mapPlotAppIntoxicacion <- tm_shape(dataShapeMap) + 
  tm_polygons("TasaAjustada_IntoxPlaguicidas_TotalPoblacion", 
              id = "Departamento", 
              title = "Intoxicación",
              breaks = c(0,0.1,5,10,20,40,60,80),
              labels = c("0", "1-5", "5-10", "10-20", "20-40", "40-60", "60-80"),
              palette = "viridis")

# MUNICIPAL - DATOS


