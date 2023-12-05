marketing <- read.csv("C:/Users/admin/Downloads/marketing.csv")
View(marketing)
ls(marketing)
str(marketing)
colSums(is.na(marketing))
plot(marketing$sales, marketing$youtube, col=rainbow(3))
plot(marketing$sales, marketing$facebook, col=rainbow(3))
plot(marketing$sales, marketing$newspaper, col=rainbow(3))

boxplot(marketing)

library('caTools')
set.seed(100)
sample = sample.split(marketing, SplitRatio = 0.75)
train = subset(marketing,sample==TRUE)
head(train)
str(train)
test = subset(marketing,sample==TRUE)
str(test)

#create the model
ml = lm(sales~youtube+facebook+newspaper, data=train)
summary(ml)
