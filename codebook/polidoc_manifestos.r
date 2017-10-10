################################################
#Polidoc.net documentation        10.10.2017   #
#Creating coverage pictures from the .csv files#
################################################

#Downlaod .csv for regions and nations into working directory 

#path <- "U:/Service MZES/Text Data/Polidoc"
#path <- ""
setwd(path) 

##########
#NATIONAL#
##########

#read national files 
at <- read.csv(paste(path,"/codebookfiles/AT.csv",sep=""),sep=",")
be <- read.csv(paste(path,"/codebookfiles/BE.csv",sep=""),sep=",")
cz <- read.csv(paste(path,"/codebookfiles/CZ.csv",sep=""),sep=",")
dk <- read.csv(paste(path,"/codebookfiles/DK.csv",sep=""),sep=",")
ee <- read.csv(paste(path,"/codebookfiles/EE.csv",sep=""),sep=",")
fi <- read.csv(paste(path,"/codebookfiles/FI.csv",sep=""),sep=",")
fr <- read.csv(paste(path,"/codebookfiles/FR.csv",sep=""),sep=",")
de <- read.csv(paste(path,"/codebookfiles/DE.csv",sep=""),sep=",")
ie <- read.csv(paste(path,"/codebookfiles/IE.csv",sep=""),sep=",")
it <- read.csv(paste(path,"/codebookfiles/IT.csv",sep=""),sep=",")
lu <- read.csv(paste(path,"/codebookfiles/LU.csv",sep=""),sep=",")
mt <- read.csv(paste(path,"/codebookfiles/MT.csv",sep=""),sep=",")
nl <- read.csv(paste(path,"/codebookfiles/NL.csv",sep=""),sep=",")
no <- read.csv(paste(path,"/codebookfiles/NO.csv",sep=""),sep=",")
pl <- read.csv(paste(path,"/codebookfiles/PL.csv",sep=""),sep=",")
pt <- read.csv(paste(path,"/codebookfiles/PT.csv",sep=""),sep=",")
es <- read.csv(paste(path,"/codebookfiles/ES.csv",sep=""),sep=",")
se <- read.csv(paste(path,"/codebookfiles/SE.csv",sep=""),sep=",")
ch <- read.csv(paste(path,"/codebookfiles/CH.csv",sep=""),sep=",")
uk <- read.csv(paste(path,"/codebookfiles/UK.csv",sep=""),sep=",")


#fixes 
at$acronym <- as.character(at$acronym)
at$year <- as.numeric(as.character(at$year))
at$cmpcode <- as.numeric(at$cmpcode)

be$acronym <- as.character(be$acronym)
be$year <- as.numeric(as.character(be$year))
be$cmpcode <- as.numeric(be$cmpcode)

cz$acronym <- as.character(cz$acronym)
cz$year <- as.numeric(as.character(cz$year))
cz$cmpcode <- as.numeric(cz$cmpcode)

dk$acronym <- as.character(dk$acronym)
dk$year <- as.numeric(as.character(dk$year))
dk$cmpcode <- as.numeric(dk$cmpcode)

ee$acronym <- as.character(ee$acronym)
ee$year <- as.numeric(as.character(ee$year))
ee$cmpcode <- as.numeric(ee$cmpcode)

fi$acronym <- as.character(fi$acronym)
fi$year <- as.numeric(as.character(fi$year))
fi$cmpcode <- as.numeric(fi$cmpcode)

fr$acronym <- as.character(fr$acronym)
fr$year <- as.numeric(as.character(fr$year))
fr$cmpcode <- as.numeric(fr$cmpcode)

de$acronym <- as.character(de$acronym)
de$year <- as.numeric(as.character(de$year))
de$cmpcode <- as.numeric(de$cmpcode)

ie$acronym <- as.character(ie$acronym)
ie$year <- as.numeric(as.character(ie$year))
ie$cmpcode <- as.numeric(ie$cmpcode)

it$acronym <- as.character(it$acronym)
it$year <- as.numeric(as.character(it$year))
it$cmpcode <- as.numeric(it$cmpcode)

lu$acronym <- as.character(lu$acronym)
lu$year <- as.numeric(as.character(lu$year))
lu$cmpcode <- as.numeric(lu$cmpcode)

mt$acronym <- as.character(mt$acronym)
mt$year <- as.numeric(as.character(mt$year))
mt$cmpcode <- as.numeric(mt$cmpcode)

nl$acronym <- as.character(nl$acronym)
nl$year <- as.numeric(as.character(nl$year))
nl$cmpcode <- as.numeric(nl$cmpcode)

no$acronym <- as.character(no$acronym)
no$year <- as.numeric(as.character(no$year))
no$cmpcode <- as.numeric(no$cmpcode)

pl$acronym <- as.character(pl$acronym)
pl$year <- as.numeric(as.character(pl$year))
pl$cmpcode <- as.numeric(pl$cmpcode)

pt$acronym <- as.character(pt$acronym)
pt$year <- as.numeric(as.character(pt$year))
pt$cmpcode <- as.numeric(pt$cmpcode)

es$acronym <- as.character(es$acronym)
es$year <- as.numeric(as.character(es$year))
es$cmpcode <- as.numeric(es$cmpcode)

ch$acronym <- as.character(ch$acronym)
ch$year <- as.numeric(as.character(ch$year))
ch$cmpcode <- as.numeric(ch$cmpcode)

se$acronym <- as.character(se$acronym)
se$year <- as.numeric(as.character(se$year))
se$cmpcode <- as.numeric(se$cmpcode)

uk$acronym <- as.character(uk$acronym)
uk$year <- as.numeric(as.character(uk$year))
uk$cmpcode <- as.numeric(uk$cmpcode)


#national plots 
postscript("at_nat.eps", width = 1000, height = 1000)
stripchart(at$year ~ as.character(at$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Austria",)
axis(1, at = seq(min(at$year), max(at$year), by = 1), las = 2)
dev.off()

postscript("be_nat.eps", width = 1000, height = 1000)
stripchart(be$year ~ as.character(be$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Belgium",)
axis(1, be = seq(min(be$year), max(be$year), by = 1), las = 2)
dev.off()

postscript("cz_nat.eps", width = 1000, height = 1000)
stripchart(cz$year ~ as.character(cz$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Czech Republic",)
axis(1, at = seq(min(cz$year), max(cz$year), by = 1), las = 2)
dev.off()

postscript("dk_nat.eps", width = 1000, height = 1000)
stripchart(dk$year ~ as.character(dk$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Denmark",)
axis(1, at = seq(min(dk$year), max(dk$year), by = 1), las = 2)
dev.off()

postscript("ee_nat.eps", width = 1000, height = 1000)
stripchart(ee$year ~ as.character(ee$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Estonia",)
axis(1, ee = seq(min(ee$year), max(ee$year), by = 1), las = 2)
dev.off()

postscript("fi_nat.eps", width = 1000, height = 1000)
stripchart(fi$year ~ as.character(fi$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Finland",)
axis(1, fi = seq(min(fi$year), max(fi$year), by = 1), las = 2)
dev.off()

postscript("fr_nat.eps", width = 1000, height = 1000)
stripchart(fr$year ~ as.character(fr$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for France",)
axis(1, fr = seq(min(fr$year), max(fr$year), by = 1), las = 2)
dev.off()

postscript("de_nat.eps", width = 1000, height = 1000)
stripchart(de$year ~ as.character(de$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Germany",)
axis(1, de = seq(min(de$year), max(de$year), by = 1), las = 2)
dev.off()

postscript("ie_nat.eps", width = 1000, height = 1000)
stripchart(ie$year ~ as.character(ie$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for ireland",)
axis(1, ie = seq(min(ie$year), max(ie$year), by = 1), las = 2)
dev.off()

postscript("it_nat.eps", width = 1000, height = 1000)
stripchart(it$year ~ as.character(it$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Italy",)
axis(1, it = seq(min(it$year), max(it$year), by = 1), las = 2)
dev.off()

postscript("lu_nat.eps", width = 1000, height = 1000)
stripchart(lu$year ~ as.character(lu$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Luxembourg",)
axis(1, lu = seq(min(lu$year), max(lu$year), by = 1), las = 2)
dev.off()

postscript("Malta_nat.eps", width = 1000, height = 1000)
stripchart(mt$year ~ as.character(mt$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Austria",)
axis(1, mt = seq(min(mt$year), max(mt$year), by = 1), las = 2)
dev.off()

postscript("nl_nat.eps", width = 1000, height = 1000)
stripchart(nl$year ~ as.character(nl$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Netherlands",)
axis(1, nl = seq(min(nl$year), max(nl$year), by = 1), las = 2)
dev.off()

postscript("no_nat.eps", width = 1000, height = 1000)
stripchart(no$year ~ as.character(no$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Norway",)
axis(1, no = seq(min(no$year), max(no$year), by = 1), las = 2)
dev.off()

postscript("pl_nat.eps", width = 1000, height = 1000)
stripchart(pl$year ~ as.character(pl$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Poland",)
axis(1, pl = seq(min(pl$year), max(pl$year), by = 1), las = 2)
dev.off()

postscript("pt_nat.eps", width = 1000, height = 1000)
stripchart(pt$year ~ as.character(pt$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Portugal",)
axis(1, pt = seq(min(pt$year), max(pt$year), by = 1), las = 2)
dev.off()

postscript("es_nat.eps", width = 1000, height = 1000)
stripchart(es$year ~ as.character(es$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Spain",)
axis(1, es = seq(min(es$year), max(es$year), by = 1), las = 2)
dev.off()

postscript("ch_nat.eps", width = 1000, height = 1000)
stripchart(ch$year ~ as.character(ch$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Switzerland",)
axis(1, ch = seq(min(ch$year), max(ch$year), by = 1), las = 2)
dev.off()

postscript("se_nat.eps", width = 1000, height = 1000)
stripchart(se$year ~ as.character(se$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Sweden",)
axis(1, se = seq(min(se$year), max(se$year), by = 1), las = 2)
dev.off()

postscript("uk_nat.eps", width = 1000, height = 1000)
stripchart(uk$year ~ as.character(uk$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for United Kingdom",)
axis(1, uk = seq(min(uk$year), max(uk$year), by = 1), las = 2)
dev.off()




#########
#REGIONS#
#########

#read regional files 
at1 <- read.csv(paste(path,"/codebookfiles/at_burgenland.csv",sep=""),sep=",")
at2 <- read.csv(paste(path,"/codebookfiles/at_kaernten.csv",sep=""),sep=",")
at3 <- read.csv(paste(path,"/codebookfiles/at_niederoe.csv",sep=""),sep=",")
at4 <- read.csv(paste(path,"/codebookfiles/at_oberoe.csv",sep=""),sep=",")
at5 <- read.csv(paste(path,"/codebookfiles/at_salzburg.csv",sep=""),sep=",")
at6 <- read.csv(paste(path,"/codebookfiles/at_steiermark.csv",sep=""),sep=",")
at7 <- read.csv(paste(path,"/codebookfiles/at_tirol.csv",sep=""),sep=",")
at8 <- read.csv(paste(path,"/codebookfiles/at_vorarlberg.csv",sep=""),sep=",")
at9 <- read.csv(paste(path,"/codebookfiles/at_wien.csv",sep=""),sep=",")

be1 <- read.csv(paste(path,"/codebookfiles/be_brussels.csv",sep=""),sep=",")
be2 <- read.csv(paste(path,"/codebookfiles/be_flanders.csv",sep=""),sep=",")
be3 <- read.csv(paste(path,"/codebookfiles/be_walloonia.csv",sep=""),sep=",")

ch1 <- read.csv(paste(path,"/codebookfiles/ch_aargau.csv",sep=""),sep=",")
ch2 <- read.csv(paste(path,"/codebookfiles/ch_appenzella.csv",sep=""),sep=",")
ch3 <- read.csv(paste(path,"/codebookfiles/ch_appenzelli.csv",sep=""),sep=",")
ch4 <- read.csv(paste(path,"/codebookfiles/ch_baselland.csv",sep=""),sep=",")
ch5 <- read.csv(paste(path,"/codebookfiles/ch_baselstadt.csv",sep=""),sep=",")
ch6 <- read.csv(paste(path,"/codebookfiles/ch_bern.csv",sep=""),sep=",")
ch7 <- read.csv(paste(path,"/codebookfiles/ch_fribourg.csv",sep=""),sep=",")
ch8 <- read.csv(paste(path,"/codebookfiles/ch_geneva.csv",sep=""),sep=",")
ch9 <- read.csv(paste(path,"/codebookfiles/ch_glarus.csv",sep=""),sep=",")
ch10 <- read.csv(paste(path,"/codebookfiles/ch_graubuenden.csv",sep=""),sep=",")
ch11 <- read.csv(paste(path,"/codebookfiles/ch_jura.csv",sep=""),sep=",")
ch12 <- read.csv(paste(path,"/codebookfiles/ch_luzern.csv",sep=""),sep=",")
ch13 <- read.csv(paste(path,"/codebookfiles/ch_neuchatel.csv",sep=""),sep=",")
ch14 <- read.csv(paste(path,"/codebookfiles/ch_nidwalden.csv",sep=""),sep=",")
ch15 <- read.csv(paste(path,"/codebookfiles/ch_obwalden.csv",sep=""),sep=",")
ch16 <- read.csv(paste(path,"/codebookfiles/ch_schaffhausen.csv",sep=""),sep=",")
ch17 <- read.csv(paste(path,"/codebookfiles/ch_schwyz.csv",sep=""),sep=",")
ch18 <- read.csv(paste(path,"/codebookfiles/ch_solothurn.csv",sep=""),sep=",")
ch19 <- read.csv(paste(path,"/codebookfiles/ch_stgallen.csv",sep=""),sep=",")
ch20 <- read.csv(paste(path,"/codebookfiles/ch_thurgau.csv",sep=""),sep=",")
ch21 <- read.csv(paste(path,"/codebookfiles/ch_ticino.csv",sep=""),sep=",")
ch22 <- read.csv(paste(path,"/codebookfiles/ch_uri.csv",sep=""),sep=",")
ch23 <- read.csv(paste(path,"/codebookfiles/ch_valais.csv",sep=""),sep=",")
ch24 <- read.csv(paste(path,"/codebookfiles/ch_vaud.csv",sep=""),sep=",")
ch25 <- read.csv(paste(path,"/codebookfiles/ch_zuerich.csv",sep=""),sep=",")
ch26 <- read.csv(paste(path,"/codebookfiles/ch_zug.csv",sep=""),sep=",")

cz1 <- read.csv(paste(path,"/codebookfiles/cz_centralbohemian.csv",sep=""),sep=",")
cz2 <- read.csv(paste(path,"/codebookfiles/cz_hradeckralove.csv",sep=""),sep=",")
cz3 <- read.csv(paste(path,"/codebookfiles/cz_karlovyvary.csv",sep=""),sep=",")
cz4 <- read.csv(paste(path,"/codebookfiles/cz_liberec.csv",sep=""),sep=",")
cz5 <- read.csv(paste(path,"/codebookfiles/cz_moraviansilesian.csv",sep=""),sep=",")
cz6 <- read.csv(paste(path,"/codebookfiles/cz_olomouc.csv",sep=""),sep=",")
cz7 <- read.csv(paste(path,"/codebookfiles/cz_pardubice.csv",sep=""),sep=",")
cz8 <- read.csv(paste(path,"/codebookfiles/cz_plzen.csv",sep=""),sep=",")
cz9 <- read.csv(paste(path,"/codebookfiles/cz_prague.csv",sep=""),sep=",")
cz10 <- read.csv(paste(path,"/codebookfiles/cz_southbohemian.csv",sep=""),sep=",")
cz11 <- read.csv(paste(path,"/codebookfiles/cz_southmoravian.csv",sep=""),sep=",")
cz12 <- read.csv(paste(path,"/codebookfiles/cz_ustinadlabem.csv",sep=""),sep=",")
cz13 <- read.csv(paste(path,"/codebookfiles/cz_vysocina.csv",sep=""),sep=",")
cz14 <- read.csv(paste(path,"/codebookfiles/cz_zlin.csv",sep=""),sep=",")

de1 <- read.csv(paste(path,"/codebookfiles/de_bawue.csv",sep=""),sep=",")
de2 <- read.csv(paste(path,"/codebookfiles/de_bay.csv",sep=""),sep=",")
de3 <- read.csv(paste(path,"/codebookfiles/de_berlin.csv",sep=""),sep=",")
de4 <- read.csv(paste(path,"/codebookfiles/de_brand.csv",sep=""),sep=",")
de5 <- read.csv(paste(path,"/codebookfiles/de_brem.csv",sep=""),sep=",")
de6 <- read.csv(paste(path,"/codebookfiles/de_ham.csv",sep=""),sep=",")
de7 <- read.csv(paste(path,"/codebookfiles/de_hess.csv",sep=""),sep=",")
de8 <- read.csv(paste(path,"/codebookfiles/de_meckp.csv",sep=""),sep=",")
de9 <- read.csv(paste(path,"/codebookfiles/de_nieders.csv",sep=""),sep=",")
de10 <- read.csv(paste(path,"/codebookfiles/de_nrw.csv",sep=""),sep=",")
de11 <- read.csv(paste(path,"/codebookfiles/de_rheinpf.csv",sep=""),sep=",")
de12 <- read.csv(paste(path,"/codebookfiles/de_saanh.csv",sep=""),sep=",")
de13 <- read.csv(paste(path,"/codebookfiles/de_saar.csv",sep=""),sep=",")
de14 <- read.csv(paste(path,"/codebookfiles/de_sachs.csv",sep=""),sep=",")
de15 <- read.csv(paste(path,"/codebookfiles/de_schleho.csv",sep=""),sep=",")
de16 <- read.csv(paste(path,"/codebookfiles/de_thuer.csv",sep=""),sep=",")

esp1 <- read.csv(paste(path,"/codebookfiles/esp_andalucia.csv",sep=""),sep=",")
esp2 <- read.csv(paste(path,"/codebookfiles/esp_aragon.csv",sep=""),sep=",")
esp3 <- read.csv(paste(path,"/codebookfiles/esp_asturias.csv",sep=""),sep=",")
esp4 <- read.csv(paste(path,"/codebookfiles/esp_cantabria.csv",sep=""),sep=",")
esp5 <- read.csv(paste(path,"/codebookfiles/esp_castillalamancha.csv",sep=""),sep=",")
esp6 <- read.csv(paste(path,"/codebookfiles/esp_castillayleon.csv",sep=""),sep=",")
esp7 <- read.csv(paste(path,"/codebookfiles/esp_cataluna.csv",sep=""),sep=",")
esp8 <- read.csv(paste(path,"/codebookfiles/esp_euskalherria.csv",sep=""),sep=",")
esp9 <- read.csv(paste(path,"/codebookfiles/esp_extremadura.csv",sep=""),sep=",")
esp10 <- read.csv(paste(path,"/codebookfiles/esp_galicia.csv",sep=""),sep=",")
esp11 <- read.csv(paste(path,"/codebookfiles/esp_islasbaleares.csv",sep=""),sep=",")
esp12 <- read.csv(paste(path,"/codebookfiles/esp_islascanarias.csv",sep=""),sep=",")
esp13 <- read.csv(paste(path,"/codebookfiles/esp_larioja.csv",sep=""),sep=",")
esp14 <- read.csv(paste(path,"/codebookfiles/esp_madrid.csv",sep=""),sep=",")
esp15 <- read.csv(paste(path,"/codebookfiles/esp_murcia.csv",sep=""),sep=",")
esp16 <- read.csv(paste(path,"/codebookfiles/esp_navarra.csv",sep=""),sep=",")
esp17 <- read.csv(paste(path,"/codebookfiles/esp_valencia.csv",sep=""),sep=",")


#collect regional files per country 
atreg <- rbind(at1,at2,at3,at4,at5,at6,at7,at8,at9)

bereg <- rbind(be1,be2,be3)

czreg <- rbind(cz1,cz2,cz3,cz4,cz5,cz6,cz7,cz8,cz9,cz10,cz11,cz12,cz13,cz14)

chreg <- rbind(ch1,ch2,ch3,ch4,ch5,ch6,ch7,ch8,ch9,ch10,ch11,ch12,ch13,ch14,ch15,ch16,ch17,ch18,ch19,ch20,ch21,ch22,ch23,ch24,ch25,ch26)

dereg <- rbind(de1,de2,de3,de4,de5,de6,de7,de8,de9,de10,de11,de12,de13,de14,de15,de16)

esreg <- rbind(esp1,esp2,esp3,esp4,esp5,esp6,esp7,esp8,esp9,esp10,esp11,esp12,esp13,esp14,esp15,esp16,esp17)


#fixes
atreg$acronym <- as.character(atreg$acronym)
atreg$year <- as.numeric(as.character(atreg$year))
atreg$cmpcode <- as.numeric(atreg$cmpcode)

bereg$acronym <- as.character(bereg$acronym)
bereg$year <- as.numeric(as.character(bereg$year))
bereg$cmpcode <- as.numeric(bereg$cmpcode)

czreg$acronym <- as.character(czreg$acronym)
czreg$year <- as.numeric(as.character(czreg$year))
czreg$cmpcode <- as.numeric(czreg$cmpcode)

chreg$acronym <- as.character(chreg$acronym)
chreg$year <- as.numeric(as.character(chreg$year))
chreg$cmpcode <- as.numeric(chreg$cmpcode)

dereg$acronym <- as.character(dereg$acronym)
dereg$year <- as.numeric(as.character(dereg$year))
dereg$cmpcode <- as.numeric(dereg$cmpcode)

esreg$acronym <- as.character(esreg$acronym)
esreg$year <- as.numeric(as.character(esreg$year))
esreg$cmpcode <- as.numeric(esreg$cmpcode)



#region plots 
postscript("at_reg.eps", width = 1000, height = 1000)
stripchart(atreg$year ~ as.character(atreg$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Austria (regional)",)
axis(1, at = seq(min(atreg$year), max(atreg$year), by = 1), las = 2)
dev.off()

postscript("be_reg.eps", width = 1000, height = 1000)
stripchart(bereg$year ~ as.character(bereg$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Belgium (regional)",)
axis(1, be = seq(min(bereg$year), max(bereg$year), by = 1), las = 2)
dev.off()

postscript("cz_reg.eps", width = 1000, height = 1000)
stripchart(czreg$year ~ as.character(czreg$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Czech Republic (regional)",)
axis(1, cz = seq(min(czreg$year), max(czreg$year), by = 1), las = 2)
dev.off()

postscript("ch_reg.eps", width = 1000, height = 1000)
stripchart(chreg$year ~ as.character(chreg$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Switzerland (regional)",)
axis(1, ch = seq(min(chreg$year), max(chreg$year), by = 1), las = 2)
dev.off()

postscript("de_reg.eps", width = 1000, height = 1000)
stripchart(dereg$year ~ as.character(dereg$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Germany (regional)",)
axis(1, de = seq(min(dereg$year), max(dereg$year), by = 1), las = 2)
dev.off()

postscript("es_reg.eps", width = 1000, height = 1000)
stripchart(esreg$year ~ as.character(esreg$acronym),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Spain (regional)",)
axis(1, es = seq(min(esreg$year), max(esreg$year), by = 1), las = 2)
dev.off()


#end of file 