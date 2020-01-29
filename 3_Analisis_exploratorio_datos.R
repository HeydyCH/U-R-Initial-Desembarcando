##########################################
## Lab 3 - Analisis Exploratorio de Datos
##########################################

## Carga y/o instalacion de paquetes
library(tidyverse)
library(funModeling) ## Graficos y preparacion de datos
library(Hmisc) 

##########################################
## Carga de datos
##########################################
## Data set que ya viene con el paquete funModeling: heart_disease 
heart_disease=heart_disease


##########################################
## Análisis exploratorio de datos
##########################################

## Análisis inicial de datos: df_status
df_status(heart_disease)  ## Importante
