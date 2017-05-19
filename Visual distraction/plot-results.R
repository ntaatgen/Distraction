dat <- read.table("memory-distraction.dat")
names(dat) <- c("Run","Task","Label","Trial","Time","Event","Par1","Par2","Par3","Inp1","Inp2","Inp3","Inp4","Inp5")

dat2 <- aggregate(Event ~ Label * Par1 * Run, data = dat, length)

dat3 <- dat2[dat2$Par1=="attend-movie",]

result <- with(dat3,tapply(Event,list(Label),mean))

# Data is

expdata <- c(5, 9.5, 14.5)

plot(c(result[1],result[3],result[2]),type="b", ylim=c(0,20))
lines(expdata,type="b",lty=2)

dat4 <- dat2[dat2$Par1=="success",]

result <- with(dat4,tapply(Event,list(Label),mean))

dat <- read.table("find-differences.dat")
names(dat) <- c("Run","Task","Label","Trial","Time","Event","Par1","Par2","Par3","Condition","Inp2","Inp3","Inp4","Inp5")

dat <- dat[dat$Label != "training",]

dat2 <- aggregate(Event ~ Label * Par1 * Run, data = dat, length)

dat3 <- dat2[dat2$Par1=="attend-movie",]

result <- with(dat3,tapply(Event,list(Label),mean))

expdata <- c(18, 12, 7)
plot(c(result[1],result[3],result[2]),type="b", ylim=c(0,30))
lines(expdata,type="b",lty=2)

# Number of problems solved

dat4 <- dat2[dat2$Par1=="success",]

result <- with(dat4,tapply(Event,list(Label),mean))
expdata <- c(160, 80, 50)

plot(c(result[1],result[3],result[2]),type="b", ylim=c(0,200))
lines(expdata,type="b",lty=2)
