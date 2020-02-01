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


## Gráficos de distribución (VARIABLES NUMERICAS): plot_num
plot_num(heart_disease)

## Descripción cuantitativa (números...): summary, describe, profiling_num
summary(heart_disease) ## Clasica R base
describe(heart_disease) ## Paquete Hmisc con porcentaje
profiling_num(heart_disease) ##  analisis mas exaustivo para variable categoricas




## Gráficos de distribución (VARIABLES CATEGORICAS): freq
freq(heart_disease)

tbl=freq(heart_disease$chest_pain, path_out = "graficos") 
## na.rm = True todos el analisis sin los nulos
## path_out = "graficos" guarda los graficos en esa carpeta
tbl








