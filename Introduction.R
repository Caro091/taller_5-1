##############################################################
##title: "Modelo de edad y figuras en edad-profundidad"
##author: Matías Frugone-Álvarez
##date: Junio 18, 2020
################################################################

### Limpiamos el ambiente R  

rm(list=ls())
setwd("/home/ma1506/")
### instalamos rplum
#
#install_github("devtools")
#library(devtools)
#install_github("maquinolopez/Plum")

install.packages('rplum')

### Abrimos rplum y corremos el archivo por defecto
# (Default core by Dr. Nicole Sandersons). 
library(rplum)
setwd("/home/ma1506/")
#~/Plum_runs/HP1C


mixed.14C<-mix.curves(offset=c(61,50))
Plum("VIC")
Plum("VIC",2,"VIC_C", postbomb=5)

# plum necesita la confirmación del numero de secciones
# Run HP1C with 30 sections? (Y/n) ... pues si
# estos son todos los parametros
#Plum(core = "HP1C",
#        thick = 1,
#        otherdates = NA,
#        coredir = "",
#        n.supp = -1,
#        phi.shape = 2,
#        phi.mean = 50,
#        s.shape = 5,
#        s.mean = 10,
#        Al = 0.1,
#        date.sample = NA,
#        Bqkg = TRUE,
#        seed = NA,
#        prob = 0.95,
#        d.min = 0,
#       d.max = NA,
#        d.by = 1,
#        depths.file = FALSE,
#        depths = c(),
#        depth.unit = "cm",
#        age.unit = "yr",
#        unit = depth.unit,
#        acc.shape = 1.5,
#        acc.mean = 10,
#        mem.strength = 4,
#        mem.mean = 0.7,
#        boundary = NA,
#        hiatus.depths = NA,
#        hiatus.max = 10000,
#        add = c(),
#        after = 1e-04/thick,
#        cc = 1,
#        cc1 = "IntCal13",
#        cc2 = "Marine13",
#        cc3 = "SHCal13",
#        cc4 = "ConstCal",
#       ccdir = "",
#       postbomb = 0,
#        delta.R = 1,
#        delta.STD = 0,
#        t.a = 3,
#       t.b = 4,
#       normal = FALSE,
#       suggest = TRUE,
#       reswarn = c(10, 200),
#        remember = TRUE,
#        ask = TRUE,
#        run = TRUE,
#        defaults = "defaultPlum_settings.txt",
#        sep = ",",
#        dec = ".",
#        runname = "",
#        slump = c(),
#        BCAD = FALSE,
#        ssize = 2000,
#        th0 = c(),
#        burnin = min(1500, ssize),
#        MinAge = c(),
#        MaxAge = c(),
#        cutoff = 0.001,
#        plot.pdf = TRUE,
#        dark = 1,
#        date.res = 100,
#        age.res = 200,
#        close.connections = TRUE,
#        verbose = TRUE
#)





#folder and Data are the only necesary information 
#other variables should be change according to prior information
#Data is the name of the file as "Corecode.csv"




