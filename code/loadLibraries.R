# Carga las librerias necesarias

library(pacman)
pacman::p_load(raster, 
               rgdal, 
               rgeos, 
               tidyverse, 
               stringr, 
               sf, 
               readxl, 
               ggplot2, 
               tmap, 
               tmaptools,
               leaflet, 
               dplyr,
               systemfonts,
               stringr)

print('.....loading libraries')