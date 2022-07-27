print('.....creating maps')

# Create maps

Sys.sleep(10)

print('....waiting')

mapPlot <- tm_shape(shapeMap) + 
  tm_polygons(variableMap, 
              id = "depto", 
              title = legendTitle,
              labels = c("0-5", "5-10", "10-15", "15-20", "20-25", "25-30"),
              palette = "viridis",) +
  tm_layout(title = mapTitle,
            title.position = c('center', 'top'),
            main.title.fontface = 1, 
            title.fontface = 2, 
            panel.label.fontface = 3, 
            legend.text.fontface = 4, 
            legend.title.fontfamily = "serif") +
  tm_legend(position = c("left", "bottom"), 
            frame = TRUE,
            bg.color="lightblue") +
  tm_compass(position = c("right", "top"), 
             size = 2) +
  tm_scale_bar(position = c("left", "bottom"), 
               width = 0.15) +
  tm_credits(authorCredits, 
             position = c("right", "bottom"))

# Display map

mapFunction <- function() {
  mapPlot
}