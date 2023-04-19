#Define Variable
#Sequence of parameter, here varaince is known and unknown mean from normal distribution
mu=seq(0,8,length=500)
munot=4
c=1
n=15
#Saving file in your computer as image, you can make it publication quality by changing other parameter

png(filename = 'powerfunction.png', width = 480, height = 480, units = "px", bg = "white")
#Polot function will generate 2-d plot you can speicify other things such as line color, line type, look for ?plot in R console 
plot(mu, 1-pnorm(sqrt(n)*(munot+c-mu)/3)+pnorm(sqrt(n)*(munot-c-mu)/3), ylim = c(0,1), 
     ylab = "Power Function")
#Changing the variable of Rejection region
c=2
#lines function will add additional line plot in the existing plot

lines(mu, 1-pnorm(sqrt(n)*(munot+c-mu)/3)+pnorm(sqrt(n)*(munot-c-mu)/3), ylim = c(0,1))
c=3
lines(mu, 1-pnorm(sqrt(n)*(munot+c-mu)/3)+pnorm(sqrt(n)*(munot-c-mu)/3), ylim = c(0,1))
#abline can be used to more visualization is it one sided or two sided function or not
abline(h=0, v=4, lt=2)
dev.off()
