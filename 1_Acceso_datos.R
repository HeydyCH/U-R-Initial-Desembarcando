# Instalación de paquetes
install.packages("tidyverse")
# Tiene un conjunto de paquetes desde el cual se puede hacer preparacion de datos , exploracion de dadtos
# Graficos


# Carga y/o instalación de paquetes
library(tidyverse)


##########################################
## Carga de datos
##########################################
# nombre de archivo: data/winequality-white.csv 
# (si no carga revisar el "working directory" donde estan parados): 
# Session > Set working directory > Choose directory
d_wine=read_delim("data/winequality-white.csv", delim = ";")


#########################################
## Analisis inicial
##########################################
## Impresion de los datos
d_wine




## Revision de cantidad de filas/columnas 

# Cantidad de registros
nrow(d_wine)

# Cantidad de columnas
ncol(d_wine)

## Nombre de columnas
colnames(d_wine)


## Vista previa de las variables con su respectivo tipo y 1ros valores
glimpse(d_wine)





################################ 
## Accediendo a los datos
################################
# todo el registro nro 2 (2da fila)
d_wine[2,]


# a un valor: registro nro 2 (fila) columna "pH"
d_wine[2,"pH"]

# reemplazando el contenido
d_wine[2,"pH"]=99
d_wine[2,"pH"]

# Notacion d_wine[fila, columna]
d_wine[c(1,2,3), "pH"]



# Otras maneras de acceder a un valor: operador $
d_wine$pH


# Y como es un vector... podemos acceder a 1 valor
d_wine$pH[2]