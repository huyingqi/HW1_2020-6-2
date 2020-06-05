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
> data.frame(confirmed=c(cor(cfm_e,amzn),cor(cfm_e,baba),cor(cfm_e,msft),cor(cfm_e,SPX_GI),cor(cfm_e,IXIC_GI)),deaths=c(cor(dth_e,amzn),cor(dth_e,baba),cor(dth_e,msft),cor(dth_e,SPX_GI),cor(dth_e,IXIC_GI)),row.names=c("amzn","baba","msft","SPX_GI","IXIC_GI"))
          confirmed      deaths
amzn    -0.12247205 -0.09670226
baba    -0.08626264 -0.06798189
msft    -0.22673267 -0.12131757
SPX_GI  -0.18909764 -0.07200536
IXIC_GI -0.33421899 -0.21827450
> data.frame(confirmed=c(cor(cfm_a,amzn),cor(cfm_a,baba),cor(cfm_a,msft),cor(cfm_a,SPX_GI),cor(cfm_a,IXIC_GI)),deaths=c(cor(dth_a,amzn),cor(dth_a,baba),cor(dth_a,msft),cor(dth_a,SPX_GI),cor(dth_a,IXIC_GI)),row.names=c("amzn","baba","msft","SPX_GI","IXIC_GI"))
        confirmed    deaths
amzn    0.1496322 0.1832174
baba    0.1209620 0.1508998
msft    0.7903254 0.7557100
SPX_GI  0.7399672 0.6221552
IXIC_GI 0.8021224 0.6907495
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=261,nlines=1)
Read 137 items
> cfm_sea <- as.numeric(c(data[61:137]))-as.numeric(c(data[60:136]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=262,nlines=1)
Read 137 items
> dth_sea <- as.numeric(c(data[61:137]))-as.numeric(c(data[60:136]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=263,nlines=1)
Read 137 items
> cfm_em <- as.numeric(c(data[61:137]))-as.numeric(c(data[60:136]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=264,nlines=1)
Read 137 items
> dth_em <- as.numeric(c(data[61:137]))-as.numeric(c(data[60:136]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=267,nlines=1)
Read 137 items
> cfm_af <- as.numeric(c(data[61:137]))-as.numeric(c(data[60:136]))
> data <- scan("desktop/HW1/who1.csv", what='c',sep=',',skip=268,nlines=1)
Read 137 items
> dth_af <- as.numeric(c(data[61:137]))-as.numeric(c(data[60:136]))
> data.frame(confirmed=c(cor(cfm_sea,amzn),cor(cfm_sea,baba),cor(cfm_sea,msft),cor(cfm_sea,SPX_GI),cor(cfm_sea,IXIC_GI)),deaths=c(cor(dth_sea,amzn),cor(dth_sea,baba),cor(dth_sea,msft),cor(dth_sea,SPX_GI),cor(dth_sea,IXIC_GI)),row.names=c("amzn","baba","msft","SPX_GI","IXIC_GI"))
        confirmed    deaths
amzn    0.1691160 0.1701765
baba    0.1291893 0.1315448
msft    0.7444024 0.7760397
SPX_GI  0.6836211 0.7152021
IXIC_GI 0.8185951 0.8328707
> data.frame(confirmed=c(cor(cfm_em,amzn),cor(cfm_em,baba),cor(cfm_em,msft),cor(cfm_em,SPX_GI),cor(cfm_em,IXIC_GI)),deaths=c(cor(dth_em,amzn),cor(dth_em,baba),cor(dth_em,msft),cor(dth_em,SPX_GI),cor(dth_em,IXIC_GI)),row.names=c("amzn","baba","msft","SPX_GI","IXIC_GI"))
        confirmed      deaths
amzn    0.1990794 -0.03164189
baba    0.1659945 -0.03013273
msft    0.7599213  0.14196906
SPX_GI  0.6518963  0.25999981
IXIC_GI 0.7919717  0.26726070
> data.frame(confirmed=c(cor(cfm_af,amzn),cor(cfm_af,baba),cor(cfm_af,msft),cor(cfm_af,SPX_GI),cor(cfm_af,IXIC_GI)),deaths=c(cor(dth_af,amzn),cor(dth_af,baba),cor(dth_af,msft),cor(dth_af,SPX_GI),cor(dth_af,IXIC_GI)),row.names=c("amzn","baba","msft","SPX_GI","IXIC_GI"))
          confirmed     deaths
amzn    -0.01216409 0.13229712
baba    -0.05280428 0.09836675
msft     0.71649745 0.70409567
SPX_GI   0.74125579 0.62489282
IXIC_GI  0.84351588 0.71522449
> 