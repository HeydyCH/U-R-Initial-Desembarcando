# Preparación de datos 
library(funModeling)
library(tidyverse) 

heart_disease=as.tibble(heart_disease)
heart_disease2=as.tibble(heart_disease)

# vistazo de variables
df_status(heart_disease)

# Remplazo de nulos
v_na_1=is.na(heart_disease$num_vessels_flour)
v_na_1

heart_disease$num_vessels_flour[v_na_1]=999

v_na_2=is.na(heart_disease$thal)
heart_disease$thal[v_na_2]="missing"

heart_disease$thal=as.character(heart_disease$thal)
heart_disease$thal[v_na_2]="missing"
df_status(heart_disease$thal)

## dplyr
df_status(heart_disease2)
data_clean=heart_disease2 %>% mutate(num_vessels_flour2=replace_na(num_vessels_flour, 999),
                                     thal2=replace_na(as.character(thal), "missing")) %>% select(num_vessels_flour2, thal2 , num_vessels_flour,thal)


df_status(data_clean)

# ELIMINAR RESGISTRO con NULOS
data_clean2=na.omit(heart_disease2)