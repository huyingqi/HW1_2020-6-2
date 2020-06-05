> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=270,nlines=1)
Read 137 items
> amzn <- as.numeric(c(data[61:137]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=271,nlines=1)
Read 137 items
> baba <- as.numeric(c(data[61:137]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=272,nlines=1)
Read 137 items
> msft <- as.numeric(c(data[61:137]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=273,nlines=1)
Read 137 items
> SPX_GI <-as.numeric(c(data[61:137]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=274,nlines=1)
Read 137 items
> IXIC_GI <-as.numeric(c(data[61:137]))
> 
> 
> 
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=257,nlines=1)
Read 137 items
> cfm_wp <- as.numeric(c(data[61:137])) - as.numeric(c(data[60:136]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=258,nlines=1)
Read 137 items
> dth_wp <- as.numeric(c(data[61:137])) - as.numeric(c(data[60:136]))
> 
> 
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=259,nlines=1)
Read 137 items
> cfm_e <- as.numeric(c(data[61:137])) - as.numeric(c(data[60:136]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=260,nlines=1)
Read 137 items
> dth_e <- as.numeric(c(data[61:137])) - as.numeric(c(data[60:136]))
> 
> 
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=265,nlines=1)
Read 137 items
> cfm_a <- as.numeric(c(data[61:137]))-as.numeric(c(data[60:136]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=266,nlines=1)
Read 137 items
> dth_a <- as.numeric(c(data[61:137]))-as.numeric(c(data[60:136]))
> 
> 
> 
> df <- data.frame(confirmed=c(cor(cfm_wp,amzn),cor(cfm_wp,baba),cor(cfm_wp,msft),cor(cfm_wp,SPX_GI),cor(cfm_wp,IXIC_GI)),deaths=c(cor(dth_wp,amzn),cor(dth_wp,baba),cor(dth_wp,msft),cor(dth_wp,SPX_GI),cor(dth_wp,IXIC_GI)),row.names=c("amzn","baba","msft","SPX_GI","IXIC_GI"))
> df
         confirmed       deaths
amzn    0.02311407 1.789968e-05
baba    0.02908219 3.272643e-03
msft    0.21067597 7.233416e-02
SPX_GI  0.20982126 5.833179e-02
IXIC_GI 0.14142322 2.998826e-02
> 
> 
> 
> 
> pdf("desktop/diff_index_same_region.pdf")
> plot(cfm_wp,amzn,type = "p",xlim=c(0,2500),ylim=c(1500,2500),pch=20)
> title("Correlations between indexs and a region")
> plot(cfm_wp,baba,type = "p",xlim=c(0,2500),ylim=c(150,250),pch=20)
> plot(cfm_wp,msft,type = "p",xlim=c(0,2500),ylim=c(150,200),pch=20)
> plot(cfm_wp,SPX_GI,type = "p",xlim=c(0,2500),ylim=c(1500,3500),pch=20)
> plot(cfm_wp,IXIC_GI,type = "p",xlim=c(0,2500),ylim=c(6000,10000),pch=20)
> dev.off()
null device 
          1 
> pdf("desktop/diff_region_same_index.pdf")
> plot(cfm_wp,msft,type = "p",xlim=c(0,2500),ylim=c(150,200),pch=20)
> title("Correlations between a index and 3 regions")
> plot(cfm_e,msft,type = "p",xlim=c(0,2500),ylim=c(150,200),pch=20)
> plot(cfm_a,msft,type = "p",xlim=c(0,2500),ylim=c(150,200),pch=20)
> plot(dth_wp,msft,type = "p",xlim=c(0,200),ylim=c(150,200),pch=20)
> plot(dth_e,msft,type = "p",xlim=c(0,200),ylim=c(150,200),pch=20)
> plot(dth_a,msft,type = "p",xlim=c(0,200),ylim=c(150,200),pch=20)
> dev.off()
null device 
          1 
> 