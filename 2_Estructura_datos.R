##########################################
## Estructura de datos
##########################################
## Tipos de datos (character, factor, integer, numeric)

# integer
a=7

# numeric
b=3.14

# character
c="hola mundo!"

# factor 
# Es un char
d=factor("a")



## Creando un vector (Estructura Homogenea)
v1=c(2,3,4,5,8)
v1_1=c(2,3,4,5,"hola")

v2=c("A", "A", "B")


v3=factor(v2)

v4=c(5,34,1)



## Creando un data frame / tibble
df=data.frame(var1=v4, var2=v2)
tib=tibble(var1=v4, var2=v2)

df
tib


# Ver la data ordenada en una pestaña
# View(tib)


