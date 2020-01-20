####################################################
## Lab 2 - Filtrando y operando datos en con R base
####################################################


##########################################
## Filosofía de R para manejo de datos
##########################################
# creando un vector de character
v_prov=c("misiones", "cordoba", "rosario")
v_prov


# obteniendo un vector de comparacion (y lo asignamos a una variable para filtrar despues)
# Vector de comparacion
v_flag=v_prov=="rosario"

v_flag


# reemplazando rosario por chaco
v_prov[v_flag]


v_prov[v_flag]="chaco"
v_prov


vec2=c("A", "A", "B", "B", "C")

vec2[vec2=="A"]="A2"
vec2

# --------------------------------------------------- #

## Filtrando data frames - valores faltantes (NA)
library(tidyverse)
data_holly=read_delim("data/HollywoodMovies.csv", delim = ",")

data_holly

## Tambien sirve para filtrar: Obtener todas las peliculas cuyo LeadStudio sea "Sony"
v_flag_sony=data_holly$LeadStudio=="Sony"


v_flag_sony

# filtrando (1er intento):
data_sony_1=data_holly[v_flag_sony,]

is.na(data_holly$LeadStudio)



v_na_lead_studio=is.na(data_holly$LeadStudio)
v_na_lead_studio


# ok :D
data_sony_3=data_holly[v_flag_sony & !v_na_lead_studio,]


# Operadores lógicos

a=TRUE
a=T
b=FALSE
b=F

T & T
T & F

T | T
T | F

!a
