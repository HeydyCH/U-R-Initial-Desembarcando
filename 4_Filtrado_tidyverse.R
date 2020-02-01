# Curso Desembarcando en R

##############################################
## Lab 4 - Preparación de Datos con tidyverse
##############################################

# Preparación de datos 
library(tidyverse) 
library(funModeling)

heart_disease=as_tibble(heart_disease)



################################################
### Función `filter`
################################################
### Filtrando registros basados en distintas condiciones.

# obtener todos los registros de genero = male
filter(heart_disease, gender=="male")


# Obtener todos los de pacientes `male` y cuyo chest_pain sea `1`:
mis_datos=filter(heart_disease, gender=="male" & chest_pain==1)
mis_datos

view(mis_datos) # Ver los datos en otra pestaña


# es equivalente a:
mis_datos2=filter(heart_disease, gender=="male", chest_pain==1)
mis_datos3= heart_disease %>% filter(gender=="male", chest_pain==1)



# Usando el conector lgico OR:
# fasting_blood_sugar sea 0 ó que resting_electro sea 0
mis_datos4=heart_disease %>% filter(fasting_blood_sugar==0 | resting_electro==0)


# Registros seleccionados por variable categorica:
# Variable thal con valor 3 o 6, es variable categórica
mis_datosCategoricas=heart_disease %>% filter(thal %in% c("3","6"))
view(mis_datosCategoricas) 

df_status(heart_disease$thal)


#VECTOR DE COMPARACION - DEVUELVE TRUE O FALSE
heart_disease$thal %in% c("3","6")


# Otro ejemplo con una condicion between de variable numerica: 
# resting_blood_pressure entre 130 y 145
mis_datos5=heart_disease %>% filter(resting_blood_pressure > 130 & resting_blood_pressure < 145)



