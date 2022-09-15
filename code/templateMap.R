print('.....creating map')

# Crea un mapa para cada grupo de variables

Sys.sleep(10)

print('.....rendering map')

mapPlot <- tm_shape(dataShapeMap) + 
  tm_polygons(variableMap$variableMapa, 
              id = "depto", 
              title = legendTitle$tituloLeyenda,
              breaks = breakFile,
              labels = labelFile,
              palette = "viridis") +
  tm_layout(main.title = mapTitle$tituloMapa,
            main.title.size = 1,
            main.title.fontface = 1,
            #title = mapTitle$tituloMapa,
            #title.fontface = 2,
            #title.position = c('center', 'top'),
            panel.label.fontface = 3, 
            legend.text.fontface = 4,
            #frame.lwd = 5,
            #legend.frame.lwd = 5,
            legend.title.fontfamily = "sans") +
  tm_legend(position = c("left", "bottom"), 
            frame = TRUE,
            bg.color="white") +
  tm_compass(position = c("right", "top"), 
             size = 2) +
  tm_scale_bar(position = c("left", "bottom"), 
               width = 0.15) +
  tm_credits(authorCredits$autorCreditos, 
             position = c("right", "bottom"))

print(paste('.....map created @', pngFile$exportFile))

