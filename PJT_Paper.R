Crude<- read.csv("D:/HU/Academics/S1_LateFall/ANLY_500_50_2017_ANALYTICAL METHOD 1/Assignments/Research Paper/Data/Energy/CrudeOil.csv", header = TRUE)
Heating<- read.csv("D:/HU/Academics/S1_LateFall/ANLY_500_50_2017_ANALYTICAL METHOD 1/Assignments/Research Paper/Data/Energy/HeatingOil.csv", header = TRUE)
NatGas<- read.csv("D:/HU/Academics/S1_LateFall/ANLY_500_50_2017_ANALYTICAL METHOD 1/Assignments/Research Paper/Data/Energy/NatGas.csv", header = TRUE)
Coal<- read.csv("D:/HU/Academics/S1_LateFall/ANLY_500_50_2017_ANALYTICAL METHOD 1/Assignments/Research Paper/Data/Energy/Coal.csv", header = TRUE)
CPI<- read.csv("D:/HU/Academics/S1_LateFall/ANLY_500_50_2017_ANALYTICAL METHOD 1/Assignments/Research Paper/Data/Energy/CPI.csv", header = TRUE)
DukeEnergy<- read.csv("D:/HU/Academics/S1_LateFall/ANLY_500_50_2017_ANALYTICAL METHOD 1/Assignments/Research Paper/Data/Stock/DukeEnergy.csv", header = TRUE)
NextEra<- read.csv("D:/HU/Academics/S1_LateFall/ANLY_500_50_2017_ANALYTICAL METHOD 1/Assignments/Research Paper/Data/Stock/NextEra.csv", header = TRUE)
PGE<- read.csv("D:/HU/Academics/S1_LateFall/ANLY_500_50_2017_ANALYTICAL METHOD 1/Assignments/Research Paper/Data/Stock/PG&E.csv", header = TRUE)
SouthernCo<- read.csv("D:/HU/Academics/S1_LateFall/ANLY_500_50_2017_ANALYTICAL METHOD 1/Assignments/Research Paper/Data/Stock/SouthernCompany.csv", header = TRUE)
DJI<- read.csv("D:/HU/Academics/S1_LateFall/ANLY_500_50_2017_ANALYTICAL METHOD 1/Assignments/Research Paper/Data/Stock/DJI.csv", header = TRUE)
Fuel<- read.csv("D:/HU/Academics/S1_LateFall/ANLY_500_50_2017_ANALYTICAL METHOD 1/Assignments/Research Paper/Data/Energy/Fuel_Index.csv", header = TRUE)

plot(Crude$WTI)
plot(Crude$Brent)
plot(Heating$Heating.Oil)
plot(Coal$Coal)
plot(CPI$CPI)

c<- seq(1, length(Crude$Date), 12)
ticks<- c("Jan 1997", "Jan 1998", "Jan 1999", "Jan 2000", "Jan 2001", "Jan 2002", "Jan 2003", "Jan 2004", "Jan 2005", "Jan 2006", "Jan 2007", "Jan 2008", "Jan 2009", "Jan 2010", "Jan 2011", "Jan 2012", "Jan 2013", "Jan 2014", "Jan 2015", "Jan 2016", "Jan 2017")

energy.price<- data.frame(Crude, Coal$Coal, CPI$CPI, Heating$Heating.Oil, NatGas$NatGas)
stock.price<- data.frame(DukeEnergy, NextEra$Close, PGE$Close, SouthernCo$Close)
colnames(stock.price)<- c("Date", "Duke", "NextEra", "PGE", "SouthernCo")

cor(energy.price[,2:7])

plot(Crude$WTI, type = "b", xlab = "", xaxt= "n", ylab = "WTI", main= "WTI Price")
axis(1, at= c, labels= ticks, las= 2)
grid(NA, NULL, lty = 2)
abline(v=seq(1, length(Crude$Date), 12), lty= 2, col= "lightgray")
par(new= TRUE)
plot(Fuel$Fuel, type = "b", xlab = "", xaxt= "n", ylab = "", main= "", col= "blue")

plot(Crude$Brent, type = "b", xlab = "", xaxt= "n", ylab = "Brent", main= "Brent Price")
axis(1, at= c, labels= ticks, las= 2)
grid(NA, NULL, lty = 2)
abline(v=seq(1, length(Crude$Date), 12), lty= 2, col= "lightgray")
par(new= TRUE)
plot(Fuel$Fuel, type = "b", xlab = "", xaxt= "n", ylab = "", main= "", col= "blue")

plot(Heating$Heating.Oil, type = "b", xlab = "", xaxt= "n", ylab = "Heating Oil", main= "Heating Oil Price")
axis(1, at= c, labels= ticks, las= 2)
grid(NA, NULL, lty = 2)
abline(v=seq(1, length(Crude$Date), 12), lty= 2, col= "lightgray")
par(new= TRUE)
plot(Fuel$Fuel, type = "b", xlab = "", xaxt= "n", ylab = "", main= "", col= "blue")

plot(Coal$Coal, type = "b", xlab = "", xaxt= "n", ylab = "Coal", main= "Coal Price")
axis(1, at= c, labels= ticks, las= 2)
grid(NA, NULL, lty = 2)
abline(v=seq(1, length(Crude$Date), 12), lty= 2, col= "lightgray")
par(new= TRUE)
plot(Fuel$Fuel, type = "b", xlab = "", xaxt= "n", ylab = "", main= "", col= "blue")

plot(NatGas$NatGas, type = "b", xlab = "", xaxt= "n", ylab = "NatGas", main= "NatGas Price")
axis(1, at= c, labels= ticks, las= 2)
grid(NA, NULL, lty = 2)
abline(v=seq(1, length(Crude$Date), 12), lty= 2, col= "lightgray")
par(new= TRUE)
plot(Fuel$Fuel, type = "b", xlab = "", xaxt= "n", ylab = "", main= "", col= "blue")

plot(CPI$CPI, type = "b", xlab = "", xaxt= "n", ylab = "CPI", main= "CPI Index")
axis(1, at= c, labels= ticks, las= 2)
grid(NA, NULL, lty = 2)
abline(v=seq(1, length(Crude$Date), 12), lty= 2, col= "lightgray")
par(new= TRUE)
plot(Fuel$Fuel, type = "b", xlab = "", xaxt= "n", ylab = "", main= "", col= "blue")

plot(stock.price$Duke , type = "b", xlab = "", xaxt= "n", ylab = "DukeEnergy", main= "Duke Energy Stock Price")
axis(1, at= c, labels= ticks, las= 2)
grid(NA, NULL, lty = 2)
abline(v=seq(1, length(Crude$Date), 12), lty= 2, col= "lightgray")
par(new= TRUE)
plot(DJI$DJI, type = "b", xlab = "", xaxt= "n", ylab = "", main= "", col= "red")

plot(stock.price$NextEra , type = "b", xlab = "", xaxt= "n", ylab = "NextEra", main= "NextEra Stock Price")
axis(1, at= c, labels= ticks, las= 2)
grid(NA, NULL, lty = 2)
abline(v=seq(1, length(Crude$Date), 12), lty= 2, col= "lightgray")
par(new= TRUE)
plot(DJI$DJI, type = "b", xlab = "", xaxt= "n", ylab = "", main= "", col= "red")

plot(stock.price$PGE , type = "b", xlab = "", xaxt= "n", ylab = "PG&E", main= "PG&E Stock Price")
axis(1, at= c, labels= ticks, las= 2)
grid(NA, NULL, lty = 2)
abline(v=seq(1, length(Crude$Date), 12), lty= 2, col= "lightgray")
par(new= TRUE)
plot(DJI$DJI, type = "b", xlab = "", xaxt= "n", ylab = "", main= "", col= "red")

plot(stock.price$SouthernCo , type = "b", xlab = "", xaxt= "n", ylab = "SouthernCo", main= "SouthernCo Stock Price")
axis(1, at= c, labels= ticks, las= 2)
grid(NA, NULL, lty = 2)
abline(v=seq(1, length(Crude$Date), 12), lty= 2, col= "lightgray")
par(new= TRUE)
plot(DJI$DJI, type = "b", xlab = "", xaxt= "n", ylab = "", main= "", col= "red")

monthId<- c(1:246)
coal.price<- Coal$Coal
cpi.index<- CPI$CPI
wti.price<- Crude$WTI
brent.price<- Crude$Brent
heating.price<- Heating$Heating.Oil
natgas.price<- NatGas$NatGas

duke.stock<- stock.price$Duke
nextera.stock<- stock.price$NextEra
pge.stock<- stock.price$PGE
southernco.stock<- stock.price$SouthernCo

## Linear Model
data.mod<- data.frame(monthId, duke.stock, nextera.stock, pge.stock, southernco.stock, wti.price, brent.price, coal.price, heating.price, natgas.price, cpi.index)
 # DukeEnergy
  # All iv
duke.all<- data.frame(monthId, duke.stock, wti.price, brent.price, coal.price, heating.price, natgas.price, cpi.index)
duke.all.mod<- lm(duke.all$duke.stock~duke.all$wti.price+duke.all$brent.price+duke.all$coal.price+duke.all$heating.price+duke.all$natgas.price+duke.all$cpi.index)
summary(duke.all.mod)
  # mod 2 - WTI
duke.mod.2<- lm(duke.all$duke.stock~duke.all$brent.price+duke.all$coal.price+duke.all$heating.price+duke.all$natgas.price+duke.all$cpi.index)
summary(duke.mod.2)
plot(duke.mod.2)
  # mod 3 - brent, cpi
duke.mod.3<- lm(duke.all$duke.stock~duke.all$wti.price+duke.all$coal.price+duke.all$heating.price+duke.all$natgas.price)
summary(duke.mod.3)
  # mod 4 - brent, cpi, coal <Optimal>
duke.mod.4<- lm(duke.all$duke.stock~duke.all$wti.price+duke.all$heating.price+duke.all$natgas.price)
summary(duke.mod.4)
plot(duke.mod.3)

 # NextEra
  # All iv
ne.all.mod<- lm(data.mod$nextera.stock~data.mod$wti.price+data.mod$brent.price+data.mod$coal.price+data.mod$heating.price+data.mod$natgas.price+data.mod$cpi.index)
summary(ne.all.mod)
plot(ne.mod.2)
  # mod 2 - brent
ne.mod.2<- lm(data.mod$nextera.stock~data.mod$brent.price+data.mod$coal.price+data.mod$heating.price+data.mod$natgas.price+data.mod$cpi.index)
summary(ne.mod.2)
  # mod 3 - brent, coal, heating, natgas <Optimal>
ne.mod.3<- lm(data.mod$nextera.stock~data.mod$wti.price+data.mod$cpi.index)
summary(ne.mod.3)
plot(ne.mod.3)

 # PG&E
  # All iv
pge.all.mod<- lm(data.mod$pge.stock~data.mod$wti.price+data.mod$brent.price+data.mod$coal.price+data.mod$heating.price+data.mod$natgas.price+data.mod$cpi.index)
summary(pge.all.mod)
  # mod 2 - natgas <Optimal>
pge.mod.2<- lm(data.mod$pge.stock~data.mod$wti.price+data.mod$brent.price+data.mod$coal.price+data.mod$heating.price+data.mod$cpi.index)
summary(pge.mod.2)
  # mod 3 - natgas, coal
pge.mod.3<- lm(data.mod$pge.stock~data.mod$wti.price+data.mod$brent.price+data.mod$heating.price+data.mod$cpi.index)
summary(pge.mod.3)
  # mod 4 - natgas, coal, heating
pge.mod.4<- lm(data.mod$pge.stock~data.mod$wti.price+data.mod$brent.price+data.mod$cpi.index)
summary(pge.mod.4)
plot(pge.mod.2)

 # SouthernCo
  # All iv
sco.all.mod<- lm(data.mod$southernco.stock~data.mod$wti.price+data.mod$brent.price+data.mod$coal.price+data.mod$heating.price+data.mod$natgas.price+data.mod$cpi.index)
summary(sco.all.mod)
  # mod 2 - NatGas
sco.mod.2<- lm(data.mod$southernco.stock~data.mod$wti.price+data.mod$brent.price+data.mod$coal.price+data.mod$heating.price+data.mod$cpi.index)
summary(sco.mod.2)
  # mod 3 - wti, natgas <Optimal>
sco.mod.3<- lm(data.mod$southernco.stock~data.mod$brent.price+data.mod$coal.price+data.mod$heating.price+data.mod$cpi.index)
summary(sco.mod.3)
plot(sco.mod.2)
