library(rbacon)
setwd("/home/ma1506/")
mixed.14C<-mix.curves(offset=c(61,50))
Bacon("VIC",acc.mean=5,res=20,cc4="mixed.14C",depths.file=T,
      acc.shape=1.5,mem.strength=4, mem.mean=0.7, thick=10,ssize=8000,d.by=1,rotate.axes=T,d.min=0,d.max=1197)
agedepth()
dev.off()
accrate.d30 = accrate.depth(30)
summary(accrate.d30)
hist(accrate.d30, prob=TRUE, col="grey")# prob=TRUE for probabilities not counts
lines(density(accrate.d30, adjust=2), col="blue", lwd=2) # add a density estimate with defaults

accrate.d25 = accrate.depth(25)
summary(accrate.d25)
hist(accrate.d25, prob=TRUE, col="grey")# prob=TRUE for probabilities not counts
lines(density(accrate.d25, adjust=2), col="blue", lwd=2) # add a density estimate with defaults


accrate.d50 = accrate.depth(50)
summary(accrate.d50)
hist(accrate.d50, prob=TRUE, col="grey")# prob=TRUE for probabilities not counts
lines(density(accrate.d50, adjust=2), col="blue", lwd=2) # add a density estimate with defaults


accrate.d120 = accrate.depth(120)
summary(accrate.d120)
hist(accrate.d120, prob=TRUE, col="grey")# prob=TRUE for probabilities not counts
lines(density(accrate.d120, adjust=2), col="blue", lwd=2) # add a density estimate with defaults

accrate.d190 = accrate.depth(190)
summary(accrate.d190)
hist(accrate.d190, prob=TRUE, col="grey")# prob=TRUE for probabilities not counts
lines(density(accrate.d190, adjust=2), col="blue", lwd=2) # add a density estimate with defaults

accrate.d220 = accrate.depth(220)
summary(accrate.d220)
hist(accrate.d220, prob=TRUE, col="grey")# prob=TRUE for probabilities not counts
lines(density(accrate.d220, adjust=2), col="blue", lwd=2) # add a density estimate with defaults

proxy.ghost(1,dark=0.2)
proxy.ghost(2,dark=0.2)
proxy.ghost(3,dark=0.2)
proxy.ghost(4,dark=0.2)
proxy.ghost(5,dark=0.2)



setwd("/home/ma1506/Bacon_runs/VIC")
y0<-read.csv("VIC_proxies.csv",header=T, dec=".")

library("dplyr")

y1<-na.omit(select(y0,median, CHAR))
y2<-na.omit(select(y0,median, CBACK))
y3<-na.omit(select(y0,median, CPEAK))
y4<-select(y0,median, Fire.magnitude)
y5<-select(y0,median, Fire.frequency)


##################### y1 CHAR #############################################

setwd("/home/ma1506/Dropbox/Proyecto_Tesis_Carolina/figuras/vic")
pdf("CHAR_PLOT.pdf")
s00  <- smooth.spline(y1[,1], y1[,2],df=200)
splinefun(y1[,1],y1[,2], method = "fmm")
plot(y1[,1], y1[,2],ylab="CHAR",xlab="Cal BP", type="l")
lines(s00, col = "red")
abline(h=mean(y1[,2],na.rm = TRUE),lty=1,col="black")
dev.off();

##################### y2 CBACK #############################################

setwd("/home/ma1506/Dropbox/Proyecto_Tesis_Carolina/figuras/vic")
pdf("CBACK_PLOT.pdf")
s00  <- smooth.spline(y2[,1], y2[,2],df=200)
splinefun(y2[,1],y2[,2], method = "fmm")
plot(y2[,1], y2[,2],ylab="CBACK",xlab="Cal BP", type="l")
lines(s00, col = "red")
abline(h=mean(y2[,2],na.rm = TRUE),lty=1,col="black")
dev.off();

##################### y3 CPEAK #############################################

setwd("/home/ma1506/Dropbox/Proyecto_Tesis_Carolina/figuras/vic")
pdf("CPEAK_PLOT.pdf")
s00  <- smooth.spline(y3[,1], y3[,2],df=250)
splinefun(y3[,1],y3[,2], method = "fmm")
plot(y3[,1], y3[,2],ylab="CPEAK",xlab="Cal BP", type="l")
lines(s00, col = "red")
abline(h=mean(y3[,2],na.rm = TRUE),lty=1,col="black")
dev.off();

##################### y4 Fire.magnitude #############################################

setwd("/home/ma1506/Dropbox/Proyecto_Tesis_Carolina/figuras/vic")
pdf("Fire_magnitude_PLOT.pdf")
s00  <- smooth.spline(y4[,1], y4[,2],df=100)
splinefun(y4[,1],y4[,2], method = "fmm")
plot(y4[,1], y4[,2],ylab="Fire.magnitude",xlab="Cal BP", type="l")
lines(s00, col = "red")
abline(h=mean(y4[,2],na.rm = TRUE),lty=1,col="black")
dev.off();

##################### y5 Fire.frequency #############################################

setwd("/home/ma1506/Dropbox/Proyecto_Tesis_Carolina/figuras/vic")
pdf("Fire_frequency_PLOT.pdf")
s00  <- smooth.spline(y5[,1], y5[,2])
splinefun(y5[,1],y5[,2], method = "fmm")
plot(y5[,1], y5[,2],ylab="Fire.frequency",xlab="Cal BP", type="l")
lines(s00, col = "red")
abline(h=mean(y5[,2],na.rm = TRUE),lty=1,col="black")
dev.off();


ages.d268 = Bacon.Age.d(268)
accrate.d268 = accrate.depth(10)
accrate.a14000 = accrate.age(700)
plot(accrate.d268)
hist(ages.d268)
plot.accrate.age(,dark=50)
plot.accrate.depth()

flux.age(1, flux.lab="TOC [¿?/cm2] /yr", age.res=200,dark=50)
flux.age(2, flux.lab="BioSi[¿?/cm2] /yr", age.res=200,dark=50)
flux.age(3, flux.lab="TS [¿?/cm2]/yr", age.res=200,dark=50)

