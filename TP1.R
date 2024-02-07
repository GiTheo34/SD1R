#Ex 1
iris
class(iris)
#View(iris)
nrow(x = iris)
ncol(x = iris)
colnames(iris)
summary(iris)
iris$Sepal.Length
iris$Species
iris[c(100,103,105),]
iris[seq(50,100),]
mean(iris$Sepal.Length)
median((iris$Sepal.Width))
sd(iris$Petal.Length)
quantile(iris$Petal.Width, probs = seq(0,1, by= 0.1))

#Ex 2

dfmanga = read.csv("manga.csv")
dfanime = read.csv("anime.csv")
class(dfanime)
class(dfmanga)
#View(dfanime)
#View(dfmanga)
dim(dfanime)
mean(dfanime$Score)
mean(dfmanga$Score)
sd(dfanime$Score)
sd(dfmanga$Score)
quantile(dfanime$Score, probs = seq(0,1, by= 0.1))
quantile(dfmanga$Score, probs = seq(0,1, by= 0.1))
nrow(subset(dfmanga, dfmanga$Score > 9 ))
nrow(subset(dfmanga, dfmanga$Vote >= 200000 ))
nrow(subset(dfmanga, dfmanga$Score > 8 & dfmanga$Vote >= 200000 ))
nrow(subset(dfmanga, 7<dfmanga$Score & dfmanga$Score<8))

rating = table(dfanime$Rating)
sum(rating)
prop.table(rating)
nrow(subset(dfanime, dfanime$Rating == "R - 17+ (violence & profanity)"))
nrow(subset(dfanime, dfanime$Rating != "R - 17+ (violence & profanity)"))
nrow(subset(dfanime, dfanime$Rating == "PG - Children" | dfanime$Rating == "G - All Ages"))
nrow(subset(dfanime, dfanime$Rating != "PG - Children" & dfanime$Rating != "G - All Ages"))
nrow(subset(dfanime, dfanime$Score > 9 & dfanime$Vote > 400000))

dfanime <- dfanime[ , c("Title","Score","Vote","Ranked")]
dfmanga <- dfmanga[ , c("Title","Score","Vote","Ranked")]
dfanime$Type = "Anime"
dfmanga$Type = "Manga"
dfConcat = rbind(dfanime,dfmanga)
View(dfConcat)
write.table(dfConcat,file = "AnimeManga.csv", sep = ";", row.names = FALSE)
