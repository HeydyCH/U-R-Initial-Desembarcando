# Curso Desembarcando en R

##############################################
## Lab 5 - Preparación de Datos con tidyverse
##############################################

# Preparación de datos 
library(funModeling)
library(tidyverse) 

heart_disease=as.tibble(heart_disease)


################################################
### Función `arrange`
################################################
### Usando arrange para ordenar registros

# ordenando el dataframe anterior: 

# orden ASCENDENTE:
# variable age
d1=heart_disease %>% arrange(age)
view(d1)

# variable chest_pain y age:
d2=heart_disease %>% arrange(chest_pain, age)

# orden DESCENDENTE:
d3=heart_disease %>% arrange(-age)
