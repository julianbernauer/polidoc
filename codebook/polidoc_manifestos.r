################################################
#Polidoc.net documentation        11.10.2017   #
#Creating coverage pictures from the .csv files#
################################################

library(xtable)

#Downlaod .csv for regions and nations into working directory 

#path <- "U:/Service MZES/Text Data/Polidoc"
path <- "C:/Users/jbernaue/Desktop/polidoc-master171120/codebook"
setwd(path) 

##########
#NATIONAL#
##########

#read national files 
at <- read.csv(paste(path,"/codebookfiles/AT.csv",sep=""),sep=",", encoding = "UTF-8")
be <- read.csv(paste(path,"/codebookfiles/BE.csv",sep=""),sep=",", encoding = "UTF-8")
cz <- read.csv(paste(path,"/codebookfiles/CZ.csv",sep=""),sep=",", encoding = "UTF-8")
dk <- read.csv(paste(path,"/codebookfiles/DK.csv",sep=""),sep=",", encoding = "UTF-8")
ee <- read.csv(paste(path,"/codebookfiles/EE.csv",sep=""),sep=",", encoding = "UTF-8")
fi <- read.csv(paste(path,"/codebookfiles/FI.csv",sep=""),sep=",", encoding = "UTF-8")
fr <- read.csv(paste(path,"/codebookfiles/FR.csv",sep=""),sep=",", encoding = "UTF-8")
de <- read.csv(paste(path,"/codebookfiles/DE.csv",sep=""),sep=",", encoding = "UTF-8")
ie <- read.csv(paste(path,"/codebookfiles/IE.csv",sep=""),sep=",", encoding = "UTF-8")
it <- read.csv(paste(path,"/codebookfiles/IT.csv",sep=""),sep=",", encoding = "UTF-8")
lu <- read.csv(paste(path,"/codebookfiles/LU.csv",sep=""),sep=",", encoding = "UTF-8")
mt <- read.csv(paste(path,"/codebookfiles/MT.csv",sep=""),sep=",", encoding = "UTF-8")
nl <- read.csv(paste(path,"/codebookfiles/NL.csv",sep=""),sep=",", encoding = "UTF-8")
no <- read.csv(paste(path,"/codebookfiles/NO.csv",sep=""),sep=",", encoding = "UTF-8")
pl <- read.csv(paste(path,"/codebookfiles/PL.csv",sep=""),sep=",", encoding = "UTF-8")
pt <- read.csv(paste(path,"/codebookfiles/PT.csv",sep=""),sep=",", encoding = "UTF-8")
es <- read.csv(paste(path,"/codebookfiles/ES.csv",sep=""),sep=",", encoding = "UTF-8")
se <- read.csv(paste(path,"/codebookfiles/SE.csv",sep=""),sep=",", encoding = "UTF-8")
ch <- read.csv(paste(path,"/codebookfiles/CH.csv",sep=""),sep=",", encoding = "UTF-8")
uk <- read.csv(paste(path,"/codebookfiles/UK.csv",sep=""),sep=",", encoding = "UTF-8")


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
postscript("at_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(at$year ~ as.character(at$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Austria",las=1)
axis(1, at = seq(min(at$year), max(at$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("be_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(be$year ~ as.character(be$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Belgium",las=1)
axis(1, at = seq(min(be$year), max(be$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("cz_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(cz$year ~ as.character(cz$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.7,main="Coverage for Czech Republic",las=1)
axis(1, at = seq(min(cz$year), max(cz$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("dk_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(dk$year ~ as.character(dk$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Denmark",las=1)
axis(1, at = seq(min(dk$year), max(dk$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("ee_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(ee$year ~ as.character(ee$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Estonia",las=1)
axis(1, at = seq(min(ee$year), max(ee$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("fi_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(fi$year ~ as.character(fi$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Finland",las=1)
axis(1, at = seq(min(fi$year), max(fi$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("fr_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(fr$year ~ as.character(fr$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for France",las=1)
axis(1, at = seq(min(fr$year), max(fr$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("de_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(de$year ~ as.character(de$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Germany",las=1)
axis(1, at = seq(min(de$year), max(de$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("ie_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(ie$year ~ as.character(ie$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Ireland",las=1)
axis(1, at = seq(min(ie$year), max(ie$year), by = 1), las = 2)
dev.off()

postscript("it_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(it$year ~ as.character(it$acronym),pch=3,xlab="",xaxt="n",cex=1.5,cex.axis=.8,main="Coverage for Italy",las=1)
axis(1, at = seq(min(it$year), max(it$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("lu_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(lu$year ~ as.character(lu$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.75,main="Coverage for Luxembourg",las=1)
axis(1, at = seq(min(lu$year), max(lu$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("mt_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(mt$year ~ as.character(mt$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Malta",las=1)
axis(1, at = seq(min(mt$year), max(mt$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("nl_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(nl$year ~ as.character(nl$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Netherlands",las=1)
axis(1, at = seq(min(nl$year), max(nl$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("no_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(no$year ~ as.character(no$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Norway",las=1)
axis(1, at = seq(min(no$year), max(no$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("pl_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(pl$year ~ as.character(pl$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Poland",las=1)
axis(1, at = seq(min(pl$year), max(pl$year), by = 1),las = 2,cex.axis=.8)
dev.off()

postscript("pt_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(pt$year ~ as.character(pt$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Portugal",las=1)
axis(1, at = seq(min(pt$year), max(pt$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("es_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(es$year ~ as.character(es$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Spain",las=1)
axis(1, at = seq(min(es$year), max(es$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("ch_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(ch$year ~ as.character(ch$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Switzerland",las=1)
axis(1, at = seq(min(ch$year), max(ch$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("se_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(se$year ~ as.character(se$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Sweden",las=1)
axis(1, at = seq(min(se$year), max(se$year), by = 1), las = 2,cex.axis=.8)
dev.off()

postscript("uk_nat.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(uk$year ~ as.character(uk$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for United Kingdom",las=1)
axis(1, at = seq(min(uk$year[!is.na(uk$year)]), max(uk$year[!is.na(uk$year)]), by = 1), las = 2,cex.axis=.8)
dev.off()



#########
#REGIONS#
#########

#read regional files 
at1 <- read.csv(paste(path,"/codebookfiles/at_burgenland.csv",sep=""),sep=",")
at2 <- read.csv(paste(path,"/codebookfiles/at_kaernten.csv",sep=""),sep=",")
at3 <- read.csv(paste(path,"/codebookfiles/at_niederoe.csv",sep=""),sep=",")
at4 <- read.csv(paste(path,"/codebookfiles/at_oberoe.csv",sep=""),sep=",")
at5 <- read.csv(paste(path,"/codebookfiles/at_salzburg.csv",sep=""),sep=",", encoding = "UTF-8")
at6 <- read.csv(paste(path,"/codebookfiles/at_steiermark.csv",sep=""),sep=",", encoding = "UTF-8")
at7 <- read.csv(paste(path,"/codebookfiles/at_tirol.csv",sep=""),sep=",")
at8 <- read.csv(paste(path,"/codebookfiles/at_vorarlberg.csv",sep=""),sep=",", encoding = "UTF-8")
at9 <- read.csv(paste(path,"/codebookfiles/at_wien.csv",sep=""),sep=",", encoding = "UTF-8")

be1 <- read.csv(paste(path,"/codebookfiles/be_brussels.csv",sep=""),sep=",", encoding = "UTF-8")
be2 <- read.csv(paste(path,"/codebookfiles/be_flanders.csv",sep=""),sep=",", encoding = "UTF-8")
be3 <- read.csv(paste(path,"/codebookfiles/be_walloonia.csv",sep=""),sep=",", encoding = "UTF-8")

ch1 <- read.csv(paste(path,"/codebookfiles/ch_aargau.csv",sep=""),sep=",", encoding = "UTF-8")
ch2 <- read.csv(paste(path,"/codebookfiles/ch_appenzella.csv",sep=""),sep=",", encoding = "UTF-8")
ch3 <- read.csv(paste(path,"/codebookfiles/ch_appenzelli.csv",sep=""),sep=",", encoding = "UTF-8")
ch4 <- read.csv(paste(path,"/codebookfiles/ch_baselland.csv",sep=""),sep=",", encoding = "UTF-8")
ch5 <- read.csv(paste(path,"/codebookfiles/ch_baselstadt.csv",sep=""),sep=",", encoding = "UTF-8")
ch6 <- read.csv(paste(path,"/codebookfiles/ch_bern.csv",sep=""),sep=",", encoding = "UTF-8")
ch7 <- read.csv(paste(path,"/codebookfiles/ch_fribourg.csv",sep=""),sep=",", encoding = "UTF-8")
ch8 <- read.csv(paste(path,"/codebookfiles/ch_geneva.csv",sep=""),sep=",", encoding = "UTF-8")
ch9 <- read.csv(paste(path,"/codebookfiles/ch_glarus.csv",sep=""),sep=",", encoding = "UTF-8")
ch10 <- read.csv(paste(path,"/codebookfiles/ch_graubuenden.csv",sep=""),sep=",", encoding = "UTF-8")
ch11 <- read.csv(paste(path,"/codebookfiles/ch_jura.csv",sep=""),sep=",", encoding = "UTF-8")
ch12 <- read.csv(paste(path,"/codebookfiles/ch_luzern.csv",sep=""),sep=",", encoding = "UTF-8")
ch13 <- read.csv(paste(path,"/codebookfiles/ch_neuchatel.csv",sep=""),sep=",", encoding = "UTF-8")
ch14 <- read.csv(paste(path,"/codebookfiles/ch_nidwalden.csv",sep=""),sep=",", encoding = "UTF-8")
ch15 <- read.csv(paste(path,"/codebookfiles/ch_obwalden.csv",sep=""),sep=",", encoding = "UTF-8")
ch16 <- read.csv(paste(path,"/codebookfiles/ch_schaffhausen.csv",sep=""),sep=",", encoding = "UTF-8")
ch17 <- read.csv(paste(path,"/codebookfiles/ch_schwyz.csv",sep=""),sep=",", encoding = "UTF-8")
ch18 <- read.csv(paste(path,"/codebookfiles/ch_solothurn.csv",sep=""),sep=",", encoding = "UTF-8")
ch19 <- read.csv(paste(path,"/codebookfiles/ch_stgallen.csv",sep=""),sep=",", encoding = "UTF-8")
ch20 <- read.csv(paste(path,"/codebookfiles/ch_thurgau.csv",sep=""),sep=",", encoding = "UTF-8")
ch21 <- read.csv(paste(path,"/codebookfiles/ch_ticino.csv",sep=""),sep=",", encoding = "UTF-8")
ch22 <- read.csv(paste(path,"/codebookfiles/ch_uri.csv",sep=""),sep=",", encoding = "UTF-8")
ch23 <- read.csv(paste(path,"/codebookfiles/ch_valais.csv",sep=""),sep=",", encoding = "UTF-8")
ch24 <- read.csv(paste(path,"/codebookfiles/ch_vaud.csv",sep=""),sep=",", encoding = "UTF-8")
ch25 <- read.csv(paste(path,"/codebookfiles/ch_zuerich.csv",sep=""),sep=",", encoding = "UTF-8")
ch26 <- read.csv(paste(path,"/codebookfiles/ch_zug.csv",sep=""),sep=",", encoding = "UTF-8")

cz1 <- read.csv(paste(path,"/codebookfiles/cz_centralbohemian.csv",sep=""),sep=",", encoding = "UTF-8")
cz2 <- read.csv(paste(path,"/codebookfiles/cz_hradeckralove.csv",sep=""),sep=",", encoding = "UTF-8")
cz3 <- read.csv(paste(path,"/codebookfiles/cz_karlovyvary.csv",sep=""),sep=",", encoding = "UTF-8")
cz4 <- read.csv(paste(path,"/codebookfiles/cz_liberec.csv",sep=""),sep=",", encoding = "UTF-8")
cz5 <- read.csv(paste(path,"/codebookfiles/cz_moraviansilesian.csv",sep=""),sep=",", encoding = "UTF-8")
cz6 <- read.csv(paste(path,"/codebookfiles/cz_olomouc.csv",sep=""),sep=",", encoding = "UTF-8")
cz7 <- read.csv(paste(path,"/codebookfiles/cz_pardubice.csv",sep=""),sep=",", encoding = "UTF-8")
cz8 <- read.csv(paste(path,"/codebookfiles/cz_plzen.csv",sep=""),sep=",", encoding = "UTF-8")
#cz9 <- read.csv(paste(path,"/codebookfiles/cz_prague.csv",sep=""),sep=",", encoding = "UTF-8")
cz10 <- read.csv(paste(path,"/codebookfiles/cz_southbohemian.csv",sep=""),sep=",", encoding = "UTF-8")
cz11 <- read.csv(paste(path,"/codebookfiles/cz_southmoravian.csv",sep=""),sep=",", encoding = "UTF-8")
cz12 <- read.csv(paste(path,"/codebookfiles/cz_ustinadlabem.csv",sep=""),sep=",", encoding = "UTF-8")
cz13 <- read.csv(paste(path,"/codebookfiles/cz_vysocina.csv",sep=""),sep=",", encoding = "UTF-8")
cz14 <- read.csv(paste(path,"/codebookfiles/cz_zlin.csv",sep=""),sep=",", encoding = "UTF-8")

de1 <- read.csv(paste(path,"/codebookfiles/de_bawue.csv",sep=""),sep=",", encoding = "UTF-8")
de2 <- read.csv(paste(path,"/codebookfiles/de_bay.csv",sep=""),sep=",", encoding = "UTF-8")
de3 <- read.csv(paste(path,"/codebookfiles/de_berlin.csv",sep=""),sep=",", encoding = "UTF-8")
de4 <- read.csv(paste(path,"/codebookfiles/de_brand.csv",sep=""),sep=",", encoding = "UTF-8")
de5 <- read.csv(paste(path,"/codebookfiles/de_brem.csv",sep=""),sep=",", encoding = "UTF-8")
de6 <- read.csv(paste(path,"/codebookfiles/de_ham.csv",sep=""),sep=",", encoding = "UTF-8")
de7 <- read.csv(paste(path,"/codebookfiles/de_hess.csv",sep=""),sep=",", encoding = "UTF-8")
de8 <- read.csv(paste(path,"/codebookfiles/de_meckp.csv",sep=""),sep=",", encoding = "UTF-8")
de9 <- read.csv(paste(path,"/codebookfiles/de_nieders.csv",sep=""),sep=",", encoding = "UTF-8")
de10 <- read.csv(paste(path,"/codebookfiles/de_nrw.csv",sep=""),sep=",", encoding = "UTF-8")
de11 <- read.csv(paste(path,"/codebookfiles/de_rheinpf.csv",sep=""),sep=",", encoding = "UTF-8")
de12 <- read.csv(paste(path,"/codebookfiles/de_saanh.csv",sep=""),sep=",", encoding = "UTF-8")
de13 <- read.csv(paste(path,"/codebookfiles/de_saar.csv",sep=""),sep=",", encoding = "UTF-8")
de14 <- read.csv(paste(path,"/codebookfiles/de_sachs.csv",sep=""),sep=",", encoding = "UTF-8")
de15 <- read.csv(paste(path,"/codebookfiles/de_schleho.csv",sep=""),sep=",", encoding = "UTF-8")
de16 <- read.csv(paste(path,"/codebookfiles/de_thuer.csv",sep=""),sep=",", encoding = "UTF-8")

esp1 <- read.csv(paste(path,"/codebookfiles/esp_andalucia.csv",sep=""),sep=",", encoding = "UTF-8")
esp2 <- read.csv(paste(path,"/codebookfiles/esp_aragon.csv",sep=""),sep=",", encoding = "UTF-8")
esp3 <- read.csv(paste(path,"/codebookfiles/esp_asturias.csv",sep=""),sep=",", encoding = "UTF-8")
esp4 <- read.csv(paste(path,"/codebookfiles/esp_cantabria.csv",sep=""),sep=",", encoding = "UTF-8")
esp5 <- read.csv(paste(path,"/codebookfiles/esp_castillalamancha.csv",sep=""),sep=",", encoding = "UTF-8")
esp6 <- read.csv(paste(path,"/codebookfiles/esp_castillayleon.csv",sep=""),sep=",", encoding = "UTF-8")
esp7 <- read.csv(paste(path,"/codebookfiles/esp_cataluna.csv",sep=""),sep=",", encoding = "UTF-8")
esp8 <- read.csv(paste(path,"/codebookfiles/esp_euskalherria.csv",sep=""),sep=",", encoding = "UTF-8")
esp9 <- read.csv(paste(path,"/codebookfiles/esp_extremadura.csv",sep=""),sep=",", encoding = "UTF-8")
esp10 <- read.csv(paste(path,"/codebookfiles/esp_galicia.csv",sep=""),sep=",", encoding = "UTF-8")
esp11 <- read.csv(paste(path,"/codebookfiles/esp_islasbaleares.csv",sep=""),sep=",", encoding = "UTF-8")
esp12 <- read.csv(paste(path,"/codebookfiles/esp_islascanarias.csv",sep=""),sep=",", encoding = "UTF-8")
esp13 <- read.csv(paste(path,"/codebookfiles/esp_larioja.csv",sep=""),sep=",", encoding = "UTF-8")
esp14 <- read.csv(paste(path,"/codebookfiles/esp_madrid.csv",sep=""),sep=",", encoding = "UTF-8")
esp15 <- read.csv(paste(path,"/codebookfiles/esp_murcia.csv",sep=""),sep=",", encoding = "UTF-8")
esp16 <- read.csv(paste(path,"/codebookfiles/esp_navarra.csv",sep=""),sep=",", encoding = "UTF-8")
esp17 <- read.csv(paste(path,"/codebookfiles/esp_valencia.csv",sep=""),sep=",", encoding = "UTF-8")

uk1 <- read.csv(paste(path,"/codebookfiles/uk_scotland.csv",sep=""),sep=",", encoding = "UTF-8")
uk2 <- read.csv(paste(path,"/codebookfiles/uk_wales.csv",sep=""),sep=",", encoding = "UTF-8")

swe1 <- read.csv(paste(path,"/codebookfiles/se_blekinge.csv",sep=""),sep=",", encoding = "UTF-8")
swe2 <- read.csv(paste(path,"/codebookfiles/se_dalarnas.csv",sep=""),sep=",", encoding = "UTF-8")
swe3 <- read.csv(paste(path,"/codebookfiles/se_gävleborgs.csv",sep=""),sep=",", encoding = "UTF-8")
swe4 <- read.csv(paste(path,"/codebookfiles/se_gotlands.csv",sep=""),sep=",", encoding = "UTF-8")
swe5 <- read.csv(paste(path,"/codebookfiles/se_hallands.csv",sep=""),sep=",", encoding = "UTF-8")
swe6 <- read.csv(paste(path,"/codebookfiles/se_jämtlands.csv",sep=""),sep=",", encoding = "UTF-8")
swe7 <- read.csv(paste(path,"/codebookfiles/se_jönköpings.csv",sep=""),sep=",", encoding = "UTF-8")
swe8 <- read.csv(paste(path,"/codebookfiles/se_kalmar.csv",sep=""),sep=",", encoding = "UTF-8")
swe9 <- read.csv(paste(path,"/codebookfiles/se_kronobergs.csv",sep=""),sep=",", encoding = "UTF-8")
swe10 <- read.csv(paste(path,"/codebookfiles/se_norrbottens.csv",sep=""),sep=",", encoding = "UTF-8")
swe11 <- read.csv(paste(path,"/codebookfiles/se_örebro.csv",sep=""),sep=",", encoding = "UTF-8")
swe12 <- read.csv(paste(path,"/codebookfiles/se_östergötlands.csv",sep=""),sep=",", encoding = "UTF-8")
swe13 <- read.csv(paste(path,"/codebookfiles/se_skane.csv",sep=""),sep=",", encoding = "UTF-8")
swe14 <- read.csv(paste(path,"/codebookfiles/se_södermansland.csv",sep=""),sep=",", encoding = "UTF-8")
swe15 <- read.csv(paste(path,"/codebookfiles/se_stockholms.csv",sep=""),sep=",", encoding = "UTF-8")
swe16 <- read.csv(paste(path,"/codebookfiles/se_uppsala.csv",sep=""),sep=",", encoding = "UTF-8")
swe17 <- read.csv(paste(path,"/codebookfiles/se_värmlands.csv",sep=""),sep=",", encoding = "UTF-8")
swe18 <- read.csv(paste(path,"/codebookfiles/se_västerbottens.csv",sep=""),sep=",", encoding = "UTF-8")
swe19 <- read.csv(paste(path,"/codebookfiles/se_västernorrlands.csv",sep=""),sep=",", encoding = "UTF-8")
swe20 <- read.csv(paste(path,"/codebookfiles/se_västmanlands.csv",sep=""),sep=",", encoding = "UTF-8")
swe21 <- read.csv(paste(path,"/codebookfiles/se_västragötalands.csv",sep=""),sep=",", encoding = "UTF-8")

nl1 <- read.csv(paste(path,"/codebookfiles/nl_drenthe.csv",sep=""),sep=",", encoding = "UTF-8")
nl2 <- read.csv(paste(path,"/codebookfiles/nl_flevoland.csv",sep=""),sep=",", encoding = "UTF-8")
nl3 <- read.csv(paste(path,"/codebookfiles/nl_fryslän.csv",sep=""),sep=",", encoding = "UTF-8")
nl4 <- read.csv(paste(path,"/codebookfiles/nl_gelderland.csv",sep=""),sep=",", encoding = "UTF-8")
nl5 <- read.csv(paste(path,"/codebookfiles/nl_groningen.csv",sep=""),sep=",", encoding = "UTF-8")
nl6 <- read.csv(paste(path,"/codebookfiles/nl_limburg.csv",sep=""),sep=",", encoding = "UTF-8")
nl7 <- read.csv(paste(path,"/codebookfiles/nl_noordbrabant.csv",sep=""),sep=",", encoding = "UTF-8")
nl8 <- read.csv(paste(path,"/codebookfiles/nl_noordholland.csv",sep=""),sep=",", encoding = "UTF-8")
nl9 <- read.csv(paste(path,"/codebookfiles/nl_overijsel.csv",sep=""),sep=",", encoding = "UTF-8")
nl10 <- read.csv(paste(path,"/codebookfiles/nl_utrecht.csv",sep=""),sep=",", encoding = "UTF-8")
nl11 <- read.csv(paste(path,"/codebookfiles/nl_zeeland.csv",sep=""),sep=",", encoding = "UTF-8")
nl12 <- read.csv(paste(path,"/codebookfiles/nl_zuidholland.csv",sep=""),sep=",", encoding = "UTF-8")

#collect regional files per country 
atreg <- rbind(at1,at2,at3,at4,at5,at6,at7,at8,at9)

bereg <- rbind(be1,be2,be3)

czreg <- rbind(cz1,cz2,cz3,cz4,cz5,cz6,cz7,cz8,
               #cz9,
               cz10,cz11,cz12,cz13,cz14)

chreg <- rbind(ch1,ch2,ch3,ch4,ch5,ch6,ch7,ch8,ch9,ch10,ch11,ch12,ch13,ch14,ch15,ch16,ch17,ch18,ch19,ch20,ch21,ch22,ch23,ch24,ch25,ch26)

dereg <- rbind(de1,de2,de3,de4,de5,de6,de7,de8,de9,de10,de11,de12,de13,de14,de15,de16)

esreg <- rbind(esp1,esp2,esp3,esp4,esp5,esp6,esp7,esp8,esp9,esp10,esp11,esp12,esp13,esp14,esp15,esp16,esp17)

ukreg <- rbind(uk1,uk2)

sereg <- rbind(swe1,swe2,swe3,swe4,swe5,swe6,swe7,swe8,swe9,swe10,swe11,swe12,swe13,swe14,swe15,swe15,swe16,swe17,swe18,swe19,swe20,swe21)

nlreg <- rbind(nl1,nl2,nl3,nl4,nl5,nl6,nl7,nl8,nl9,nl10,nl11,nl12)

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

ukreg$acronym <- as.character(ukreg$acronym)
ukreg$year <- as.numeric(as.character(ukreg$year))
ukreg$cmpcode <- as.numeric(ukreg$cmpcode)

sereg$acronym <- as.character(sereg$acronym)
sereg$year <- as.numeric(as.character(sereg$year))
sereg$cmpcode <- as.numeric(sereg$cmpcode)

nlreg$acronym <- as.character(nlreg$acronym)
nlreg$year <- as.numeric(as.character(nlreg$year))
nlreg$cmpcode <- as.numeric(nlreg$cmpcode)

#region plots 
postscript("at_reg.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(atreg$year ~ as.character(atreg$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Austria (regional)",las=1)
axis(1, at = seq(min(atreg$year), max(atreg$year), by = 1), las = 2)
dev.off()

postscript("be_reg.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(bereg$year ~ as.character(bereg$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Belgium (regional)",las=1)
axis(1, at = seq(min(bereg$year), max(bereg$year), by = 1), las = 2)
dev.off()

postscript("cz_reg.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(czreg$year ~ as.character(czreg$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Czech Republic (regional)",las=1)
axis(1, at = seq(min(czreg$year), max(czreg$year), by = 1), las = 2)
dev.off()

postscript("ch_reg.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(chreg$year ~ as.character(chreg$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Switzerland (regional)",las=1)
axis(1, at = seq(min(chreg$year), max(chreg$year), by = 1), las = 2)
dev.off()

postscript("de_reg.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(dereg$year ~ as.character(dereg$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Germany (regional)",las=1)
axis(1, at = seq(min(dereg$year), max(dereg$year), by = 1), las = 2)
dev.off()

postscript("es_reg.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(esreg$year ~ as.character(esreg$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Spain (regional)",las=1)
axis(1, at = seq(min(esreg$year), max(esreg$year), by = 1), las = 2)
dev.off()

postscript("uk_reg.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(ukreg$year ~ as.character(ukreg$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for United Kingdom (regional)",las=1)
axis(1, at = seq(min(ukreg$year), max(ukreg$year), by = 1), las = 2)
dev.off()

postscript("se_reg.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(sereg$year ~ as.character(sereg$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Sweden (regional)",las=1)
axis(1, at = seq(min(sereg$year), max(sereg$year), by = 1), las = 2)
dev.off()

postscript("nl_reg.eps", width = 600, height = 600,horizontal=FALSE)
stripchart(nlreg$year ~ as.character(nlreg$acronym),pch=3,xlab="",xaxt="n",cex=1,cex.axis=.8,main="Coverage for Netherlands (regional)",las=1)
axis(1, at = seq(min(nlreg$year), max(nlreg$year), by = 1), las = 2)
dev.off()

############
#Party list#
############

#Create .csv for GitHub / full lists for LaTex/documentation 

cmp1 <- rbind(at,be,cz,dk,ee,fi,fr,de,ie,it,lu,mt,nl,no,pl,pt,es,ch,se,uk) 

cmp2 <- rbind(atreg,bereg,czreg,chreg,dereg,ukreg,esreg,sereg,nlreg)

cmp1a  <- aggregate(cmp1, by=list(cmp1$country_name,cmp1$cmpcode,cmp1$acronym,cmp1$party_engl),FUN=mean,na.rm=TRUE)
cmp1a <- subset(cmp1a, select=c(Group.1,Group.2,Group.3,Group.4))
cmp1a <- cmp1a[order(cmp1a$Group.2),]
names(cmp1a)[names(cmp1a)=="Group.1"] <- "Country name"
names(cmp1a)[names(cmp1a)=="Group.2"] <- "CMP code"
names(cmp1a)[names(cmp1a)=="Group.3"] <- "Acronym"
names(cmp1a)[names(cmp1a)=="Group.4"] <- "Party name (engl.)"

cmp2a  <- aggregate(cmp2, by=list(cmp2$country_name,cmp2$cmpcode,cmp2$acronym,cmp2$party_engl),FUN=mean,na.rm=TRUE)
cmp2a <- subset(cmp2a, select=c(Group.1,Group.2,Group.3,Group.4))
cmp2a <- cmp2a[order(cmp2a$Group.2),]
names(cmp2a)[names(cmp2a)=="Group.1"] <- "Country name"
names(cmp2a)[names(cmp2a)=="Group.2"] <- "CMP code"
names(cmp2a)[names(cmp2a)=="Group.3"] <- "Acronym"
names(cmp2a)[names(cmp2a)=="Group.4"] <- "Party name (engl.)"

write.csv(cmp1a, file="cmpcode_list_national.csv")

write.csv(cmp2a, file="cmpcode_list_regional.csv")


#Save as LaTex table
print(xtable(cmp1a, type = "latex", digits=c(0,0,0,0,0)), include.rownames=FALSE, file = "tab_national.tex")

print(xtable(cmp2a, type = "latex", digits=c(0,0,0,0,0)), include.rownames=FALSE, file = "tab_regional.tex")


#Also possible per nation/region, example for Austria: 

##AT
at_cmp  <- aggregate(at, by=list(at$cmpcode,at$acronym,at$party_orig,at$party_engl),FUN=mean,na.rm=TRUE)
at_cmp <- subset(at_cmp, select=c(Group.1,Group.2,Group.3,Group.4))
at_cmp <- at_cmp[order(at_cmp$Group.1),]
names(at_cmp)[names(at_cmp)=="Group.1"] <- "CMP code"
names(at_cmp)[names(at_cmp)=="Group.2"] <- "Acronym"
names(at_cmp)[names(at_cmp)=="Group.3"] <- "Party name (orig.)"
names(at_cmp)[names(at_cmp)=="Group.4"] <- "Party name (engl.)"
#Save as LaTex table
print(xtable(at_cmp, type = "latex", digits=c(0,0,0,0,0)), include.rownames=FALSE, file = "tab_at.tex")


#end of file 