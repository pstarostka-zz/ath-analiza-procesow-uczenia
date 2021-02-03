#(a)

a <- 4 * sin(pi)
b <- 3 * a

compare <- function(a, b) {
  ifelse(a > b, "a jest wieksze", "b jest wieksze")
}
print(compare(a, b))

#(b)

myMax <- max(1, 3)
print(myMax)

#(c)
myVector <- seq(90, 115, by = 1)
squaredVector <- myVector ^ 2
print(sum(squaredVector) / length(squaredVector))

#(d)
print(apropos("max", mode = "function"))

#(e)
#dodatkowa biblioteka, ktora umozliwa uzywanie sciezek


setwd("/Users/patryk/ath/Magister/Semestr I/apu/zadanie01/workdir")
eStr <- "lodówka z największą pojemnością"
save(eStr, file = "file.Rdata")
#remove(eStr)
#print(eStr)
#load("file.Rdata")
print(eStr)

#(f)
#install.packages("gridExtra")
library(gridExtra)
grid.table(rivers[1:10])

#(g)
gVector <- seq(1000, 850, -2)
print(gVector)

#(h)
hVectorA <- seq(30, 5, -1)
hVectorB <- seq(11, 23, 1)
hVectorD <- c(hVectorB, hVectorA)
print(hVectorD)

#(i)
lodowki <- c("lodowka 1", "lodowka 2", "lodowka 3", "lodowka 4", "lodowka 5", "lodowka 6", "lodowka 7", "lodowka 8", "lodowka 9", "lodowka 10")
pojemnosc_uzytkowa_chlodziarki <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
pojemnosc_uzytkowa_zamrazarki <- c(100, 90, 80, 70, 60, 50, 40, 30, 20, 10)
cena <- c(1000, 1220, 3200, 3120, 1020, 3001, 2000, 4000, 4340, 2330)
liczba_opinii <- c(10, 30, 123, 1, 230, 120, 40, 53, 20, 11)
tabelka <- data.frame(lodowki, pojemnosc_uzytkowa_chlodziarki, pojemnosc_uzytkowa_zamrazarki, cena, liczba_opinii)

print(tabelka)
print(mean(tabelka$cena))

#(j)
lodowki <- c("lodowka 11")
pojemnosc_uzytkowa_chlodziarki <- c(110)
pojemnosc_uzytkowa_zamrazarki <- c(15)
cena <- c(1350)
liczba_opinii <- c(10)
nowa_lodowka_tabelka <- data.frame(lodowki, pojemnosc_uzytkowa_chlodziarki, pojemnosc_uzytkowa_zamrazarki, cena, liczba_opinii)
tabelka <- rbind(tabelka, nowa_lodowka_tabelka)
print(tabelka)
print(mean(tabelka$cena))

#(k)
oceny <- c("2.5", "3.0", "4.0", "5.0", "4.5", "4.0", "3.5", "5.0", "3.5", "3.0", "4.0")
tabelka <- cbind(tabelka, oceny)
print(tabelka)
print(tapply(tabelka$cena, tabelka$oceny, mean))

#(l)
lodowki <- c("lodowka 91", "lodowka 92", "lodowka 93", "lodowka 94")
pojemnosc_uzytkowa_chlodziarki <- c(10, 20, 30, 40)
pojemnosc_uzytkowa_zamrazarki <- c(100, 90, 80, 70)
cena <- c(1000, 1220, 3200, 3120)
liczba_opinii <- c(10, 30, 123, 1)
oceny <- c("2.5", "3.0", "4.0", "5.0")
dodatkowa_tabelka <- data.frame(lodowki, pojemnosc_uzytkowa_chlodziarki, pojemnosc_uzytkowa_zamrazarki, cena, liczba_opinii, oceny)
tabelka <- rbind(tabelka, dodatkowa_tabelka)
liczebnosc <- table(tabelka$oceny)
barplot(liczebnosc)

#(m)
#install.packages("plotrix")
procenty <- liczebnosc / sum(liczebnosc)
pie(procenty)
library(plotrix)
fan.plot(liczebnosc, labels = names(liczebnosc))

#(n)
tabelka[, "status_opinii"] <-
ifelse(tabelka$liczba_opinii >= 100, 'ponad 100 opinii',
ifelse(tabelka$liczba_opinii >= 50, '50-100 opinii',
ifelse(tabelka$liczba_opinii > 0, 'mniej niz 50 opinii', 'nie ma'))
)
print(tabelka)
udzialy <- table(tabelka$status_opinii)
pie(udzialy)

#(o)
res <- paste(tabelka$lodowki, "ma ocene klientow", tabelka$oceny, " bo ma liczbe opinii", tabelka$liczba_opinii)
print(res)
