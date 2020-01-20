###########################################
## Lectura complementaria
###########################################

# Estado de salud de un conjunto de-datos: https://librovivodecienciadedatos.ai/analisis-exploratorio-de-datos.html#estado-de-salud-de-un-conjunto-de-datos
# Introduction to readr (pertenece al tidyverse, y tiene la función read_delim entre otras):  https://cran.r-project.org/web/packages/readr/vignettes/readr.html

##########################################
## Ejercicios!
##########################################
# Nota 1: Recuerden cargar todas las librerias necesarias si no lo hicieron.
# Nota 2: Fijense que su directorio de trabajo (working directory) sea "Curso Desembarcando en R"
#   sino, no les encontrará el archivo que estén leyendo de la carpeta data (ej: "data/HollywoodMovies.csv")

## 1 - Cargar el set de datos "data/HollywoodMovies.csv" (ojo con el separador!). 


## 2 - Cuantos registros y columnas tiene?



## 3 - Imprimir una variable Budget, y luego el registro numero 10

## --- ---  ---  Resolucion

## 1
d_wine=read_delim("data/HollywoodMovies.csv", delim = ",")

## 2
## REGISTROS
nrow(d_wine)


## COLUMNAS
ncol(d_wine)


## 3

glimpse(d_wine)

d_wine


## los 10 1ros elementos de una columna
d_wine["Budget"]

d_wine[10,"Budget"]

