# Curso Desembarcando en R

##############################################
## Lab 6 - Preparación de Datos con tidyverse
##############################################

# Preparación de datos 
library(funModeling)
library(tidyverse) 

heart_disease=as.tibble(heart_disease)


################################################
### Función `mutate`
################################################
# Permite crear variables nuevas

# crear variable mayor a 40 años (NEW COLUMNA)
heart_disease2 = heart_disease %>% mutate(es_mayor_40 = age > 40)




# ifelse(condicion, por true, por false)
#ifelse(heart_disease$age > 40, "es mayor a 40 años", "es menor o igual a 40 años") 
heart_disease2$nueva_var=ifelse(heart_disease$age > 40, "es mayor a 40 años", "es menor o igual a 40 años") 
select(heart_disease2, nueva_var)





# crear variable high o low basado en  max_heart_rate > 150
heart_disease3=heart_disease %>% mutate(estado_heart_rate=ifelse(max_heart_rate > 150, "high", "low"))
select(heart_disease3, max_heart_rate, estado_heart_rate)



