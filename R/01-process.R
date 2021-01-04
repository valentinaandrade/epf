# Code 1: Process EPF -----------------------------------------------------

# 1. Cargar librerias -----------------------------------------------------
if(!require(pacman)) install.packages("pacman")
pacman::p_load(tidyverse,rvest, xml2, lubridate)

# 2. Cargar bases de datos ------------------------------------------------
epf_g <- haven::read_dta("https://www.ine.cl/docs/default-source/encuesta-de-presupuestos-familiares/bbdd/viii-epf---(junio-2016---julio-2017)/base-gastos-viii-epf-(stata).dta?sfvrsn=d6113bb5_2&amp;download=true")
epf_p <- haven::read_dta("https://www.ine.cl/docs/default-source/encuesta-de-presupuestos-familiares/bbdd/viii-epf---(junio-2016---julio-2017)/base-personas-viii-epf-(stata).dta?sfvrsn=547dae5f_2&amp;download=true")
epf_c <- haven::read_dta("https://www.ine.cl/docs/default-source/encuesta-de-presupuestos-familiares/bbdd/viii-epf---(junio-2016---julio-2017)/ccif-viii-epf-(stata).dta?sfvrsn=91400cdf_2&amp;download=true")

# 3. Explorar base de datos 
str(epf_c)
