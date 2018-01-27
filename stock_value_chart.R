library(quantmod)#for symbols
library(xts)# to plot xts
getSymbols(c("IBM","RY","CM","BNS","TD","MFC","COF","SLF"))
par(mar=c(5.1, 4.1, 4.1, 8.1))#add space to the right
plot(as.zoo( merge(IBM$IBM.Close,RY$RY.Close,CM$CM.Close,BNS$BNS.Close,
                   TD$TD.Close,MFC$MFC.Close,COF$COF.Close,SLF$SLF.Close)),
                   screens=1,col=1:8,xlab='Date',ylab='USD',
                   main='A Basket of Stocks (NYSE)')
legend("topright",inset(-10,0),legend=c("IBM","RBC","CIBC","BNS","TD","Manulife",
                  "Capital One","Sunlife"),
                   col=1:8,lty=1,cex=0.8,inset=c(-0.35,0.1),xpd=TRUE)
#xpd and inset for outer legend
#check dygraph for interactive