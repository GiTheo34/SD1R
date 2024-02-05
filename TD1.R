# Ex 1

a = 10
b = 5
resultat = a*b
print(resultat)
A = 7.2
B = 10.1
resultat = A+B
rm(list=ls())

#Ex 2

v1 = seq(1,5, by = 1)
class(v1)
print(v1[3])
v2 = v1 + 3
v3 = seq(1,6,by = 1)
v4 = v3**2
v5 = v4/2
semaine = c("lundi","mardi","mercredi","jeudi","vendredi","samedi","dimanche")
class(semaine)
semaine[c(2,7)]
bool = c(TRUE, FALSE)
class(bool)
dec = c(1.5,45.2,6.45,2.1,7.9)
class(dec)
dec[c(-3)]
mois = c("janvier", "février", "mars", "avril", "mai", "juin", "juillet", "aout", "septembre", "octobre", "novembre", "décembre")
mois[c(1:3)]
negatif = c(-1,-2.5,-6,-7.1)
class(negatif)
negatif[c(4,1)]
fruits = c("pomme", "banane", "poire", "cerise", "kiwi")
class(fruits)
fruits[c(-1,-2)]
miss = c(NA, NA, NA)
class(miss)

seq1 = seq(1,10,by = 1)
length(seq1)
seq2 = seq(2,20, by = 2)
length(seq2)
seq3 = seq(0,-5)
length(seq3)
seq4 = seq(5,50, by = 5)
length(seq4)
seq5 = seq(10,1)
length(seq5)
seq6 = seq(0,1,by = 0.1)
length(seq6)
seq7 = seq(5,-5)
length(seq7)
seq8 = seq(1,10, by =2)
length(seq8)

repete = c(rep(3,5))
abc = rep(c('A', 'B', 'C'), times = 3)
un_trois = rep(c(1,2,3), times = 3)
bool2 = rep(c(TRUE,FALSE), times = 4)
rm(list = ls())

#Ex 3

alea1 = runif(5,min = 0,max = 1)
alea2 = runif(10, min = -5, max = 5)
alea3 = runif(100, min = 10, max = 20)
alea4 = runif(15, min = 50, max = 100)
alea5 = rnorm(n = 20, mean = -2, sd = 3)
mean(alea5)
sd(alea5)
alea6 = rnorm(n = 2000, mean = -2, sd = 3)
mean(alea6)
sd(alea6)
quantile(alea6, c(0.25,0.5,0.75))
quantile(alea6, c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.7,0.8,0.9))
quantile(alea6, probs = seq(0,1, by = 0.01))

salaires = rnorm(n = 3000, mean = 2400, sd = 300)
mean(salaires)
sd(salaires)
round(salaires, digits = 2)
sum(salaires)
median(salaires)
quantile(salaires, probs = 0.99)#1% des salairiés gagnent plus que ce salaire
quantile(salaires, probs = 0.2)#20% des salariés gagnent moins que ce salaire

sample(x = c(1,2,3,4,5,6), size = 1)
simulation = sample(x = c(1,2,3,4,5,6), size = 12, replace = TRUE)
unique(simulation)
sort(table(simulation))
prop.table(unique(simulation))
simulation = sample(x = c(1,2,3,4,5,6), size = 100000, replace = TRUE)
prop.table(unique(simulation))
