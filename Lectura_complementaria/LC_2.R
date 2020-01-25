###########################################
## Lectura complementaria
###########################################

# Datos faltantes o nulos: https://librovivodecienciadedatos.ai/preparacion-de-datos.html#datos_faltantes




##########################################
## Ejercicios!
##########################################
# Nota 1: Recuerden cargar todas las librerias necesarias si no lo hicieron.
# Nota 2: Fijense que su directorio de trabajo (working directory) sea "Curso Desembarcando en R"
#   sino, no les encontrará el archivo que estén leyendo de la carpeta data (ej: "data/HollywoodMovies.csv")

## 1- Obtener un data set con todas las peliculas que tienen NA en la columna `Genre`. 
# (tener cargado el data set data/HollywoodMovies.csv)

## 2 - Convertir la pelicula "Parker" en la más 
## popular de todas según la variable `RottenTomatoes` (valor de 100). Luego explorar los datos.

# copia para no perder los datos originales (buena practica)

## 3 - Crear un data frame que tenga todas las peliculas que posean la variable RottenTomatoes
## y ForeignGross nulas al mismo tiempo (tienen que combinar el 'is.na' con el '&')


##########################################
## Resolucion!
##########################################

## ---------------------------  1

# Data Completa
library(tidyverse)
data_hollywood=read_delim("data/HollywoodMovies.csv", delim = ",")
data_hollywood

# Valores de la columna "Genre"
data_hollywood$Genre

# Valores que tienen n.a en la columna Genre (true / false)
v_na_genre_studio=is.na(data_hollywood$Genre)
v_na_genre_studio


# DATA SET con las columnas Genre que son N.A
data_genre_1=data_hollywood[v_na_genre_studio,]
data_genre_1




## ---------------------------  2 

#Lista de todos los valores de la columna Movie
data_hollywood$Movie

# Columna Movie == "Parker"  (true / false)
v_flag_movie_parker=data_hollywood$Movie=="Parker"
v_flag_movie_parker


# Valores que cumplen con move = "Parker" 
data_hollywood[v_flag_movie_parker,] 

# Valores que cumplen con move = "Parker" obtener su valor RottenTomatoes
data_hollywood[v_flag_movie_parker,]$RottenTomatoes

# Cambiando el RottenTomatoes a 100
data_hollywood[v_flag_movie_parker,]$RottenTomatoes = 100

# Exploracion de los datos (move = "Parker")
data_hollywood[v_flag_movie_parker,] 


## ---------------------------  3 


# Valores que tienen n.a en la columna RottenTomatoes (true / false)
v_na_rottem_studio=is.na(data_hollywood$RottenTomatoes)
v_na_rottem_studio

## DATA SET con las columnas RottenTomatoes que son N.A
data_rotten_na=data_hollywood[v_na_rottem_studio,]
data_rotten_na


# Valores que tienen n.a en la columna ForeignGross (true / false)
v_na_foreign_studio=is.na(data_hollywood$ForeignGross)
v_na_foreign_studio

## DATA SET con las columnas ForeignGross que son N.A
data_foreign_na=data_hollywood[is.na(data_hollywood$ForeignGross),]
data_foreign_na

 
## DataFrame con todas las peliculas que posean la variable RottenTomatoes
## y ForeignGross nulas
data_rottem_foreign=data_hollywood[v_na_rottem_studio & v_na_foreign_studio,]
data_rottem_foreign

