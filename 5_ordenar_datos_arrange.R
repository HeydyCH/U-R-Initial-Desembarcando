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



################################################
### Función `select`
################################################
# Seleccionando algunas variables con `select` 
# thal, age, chest_pain
d4=heart_disease %>% select(thal, age, chest_pain)


# Con el simbolo menos (`-`) eliminamos variables
d5=d4 %>% select(-chest_pain)


# seleccionamos 2 y luego todas
d6=heart_disease %>% select(age, thal, chest_pain, everything())




# Con select tambien se puede renombrar variables:
d7=select(heart_disease, edad=age, everything())
df_status(d7)


# Verbo `rename`:
d8=heart_disease %>% rename(edad=age)






# Nombre de variable como texto
variables=c("age", "chest_pain")

select(heart_disease, variables)


# Seleccionando por tipo de dato
# SELECT PARA DATOS NUMERICOS
d9=select_if(heart_disease, is.numeric)

# is.character
# is.factor

is.character(heart_disease$age)
d10=select_if(heart_disease, is.factor)




