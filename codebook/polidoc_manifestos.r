################################################
#Polidoc.net documentation                     ###########################
#Creating coverage pictures from the .csv file - export from polidoc.net!# 
##########################################################################
# 27.06.2018 

library(xtable)

# One .csv provided by IT loaded into working directory 

path <- "U:/Service MZES/Text Data/Polidoc"
setwd(path) 

manis <- read.csv(paste(path,"/polidoc_export.csv",sep=""),sep=";", encoding = "ANSI")

#fixes 
manis$acronym <- as.character(manis$acronym)
manis$year <- as.numeric(as.character(manis$edate))
manis$cmpcode <- as.numeric(manis$cmpcode)

# switch regional / national 
manis$cmpcode_new_reg <- as.numeric(substr(manis$cmpcode_new,7,9))
manis$regional <- 0 
manis$regional[manis$cmpcode_new_reg!=0] <- 1

###
#national plots 
postscript("at_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Austria"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Austria"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Austria")
axis(1, at = seq(min(manis$year[manis$country=="Austria"&manis$regional==0]), max(manis$year[manis$country=="Austria"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("be_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Belgium"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Belgium"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Belgium")
axis(1, at = seq(min(manis$year[manis$country=="Belgium"&manis$regional==0]), max(manis$year[manis$country=="Belgium"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("cz_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Czech Republic"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Czech Republic"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Czech Republic")
axis(1, at = seq(min(manis$year[manis$country=="Czech Republic"&manis$regional==0]), max(manis$year[manis$country=="Czech Republic"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("dk_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Denmark"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Denmark"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Denmark")
axis(1, at = seq(min(manis$year[manis$country=="Denmark"&manis$regional==0]), max(manis$year[manis$country=="Denmark"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("ee_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Estonia"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Estonia"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Estonia")
axis(1, at = seq(min(manis$year[manis$country=="Estonia"&manis$regional==0]), max(manis$year[manis$country=="Estonia"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("fi_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Finland"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Finland"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Finland")
axis(1, at = seq(min(manis$year[manis$country=="Finland"&manis$regional==0]), max(manis$year[manis$country=="Finland"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("fr_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="France"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="France"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for France")
axis(1, at = seq(min(manis$year[manis$country=="France"&manis$regional==0]), max(manis$year[manis$country=="France"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("de_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Germany"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Germany"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Germany")
axis(1, at = seq(min(manis$year[manis$country=="Germany"&manis$regional==0]), max(manis$year[manis$country=="Germany"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("ie_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Ireland"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Ireland"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for ireland")
axis(1, at = seq(min(manis$year[manis$country=="Ireland"&manis$regional==0]), max(manis$year[manis$country=="Ireland"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("it_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Italy"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Italy"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Italy")
axis(1, at = seq(min(manis$year[manis$country=="Italy"&manis$regional==0]), max(manis$year[manis$country=="Italy"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("lu_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Luxembourg"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Luxembourg"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Luxembourg")
axis(1, at = seq(min(manis$year[manis$country=="Luxembourg"&manis$regional==0]), max(manis$year[manis$country=="Luxembourg"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("mt_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Malta"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Malta"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Malta")
axis(1, at = seq(min(manis$year[manis$country=="Malta"&manis$regional==0]), max(manis$year[manis$country=="Malta"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("nl_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Netherlands"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Netherlands"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Netherlands")
axis(1, at = seq(min(manis$year[manis$country=="Netherlands"&manis$regional==0]), max(manis$year[manis$country=="Netherlands"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("no_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Norway"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Norway"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Norway")
axis(1, at = seq(min(manis$year[manis$country=="Norway"&manis$regional==0]), max(manis$year[manis$country=="Norway"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("pl_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Poland"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Poland"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Poland")
axis(1, at = seq(min(manis$year[manis$country=="Poland"&manis$regional==0]), max(manis$year[manis$country=="Poland"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("pt_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Portugal"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Portugal"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Portugal")
axis(1, at = seq(min(manis$year[manis$country=="Portugal"&manis$regional==0]), max(manis$year[manis$country=="Portugal"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("es_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Spain"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Spain"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Spain")
axis(1, at = seq(min(manis$year[manis$country=="Spain"&manis$regional==0]), max(manis$year[manis$country=="Spain"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("ch_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Switzerland"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Switzerland"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Switzerland")
axis(1, at = seq(min(manis$year[manis$country=="Switzerland"&manis$regional==0]), max(manis$year[manis$country=="Switzerland"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("se_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Sweden"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Sweden"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Sweden")
axis(1, at = seq(min(manis$year[manis$country=="Sweden"&manis$regional==0]), max(manis$year[manis$country=="Sweden"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("uk_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="UK"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="UK"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for United Kingdom")
axis(1, at = seq(min(manis$year[manis$country=="UK"&manis$regional==0]), max(manis$year[manis$country=="UK"&manis$regional==0]), by = 1), las = 2)
dev.off()

# COHESIFY

postscript("cy_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Cyprus"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Cyprus"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Cyprus")
axis(1, at = seq(min(manis$year[manis$country=="Cyprus"&manis$regional==0]), max(manis$year[manis$country=="Cyprus"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("gr_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Greece"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Greece"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Greece")
axis(1, at = seq(min(manis$year[manis$country=="Greece"&manis$regional==0]), max(manis$year[manis$country=="Greece"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("ro_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Romania"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Romania"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Romania")
axis(1, at = seq(min(manis$year[manis$country=="Romania"&manis$regional==0]), max(manis$year[manis$country=="Romania"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("hu_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Hungary"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Hungary"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Hungary")
axis(1, at = seq(min(manis$year[manis$country=="Hungary"&manis$regional==0]), max(manis$year[manis$country=="Hungary"&manis$regional==0]), by = 1), las = 2)
dev.off()

postscript("si_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Slovenia"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Slovenia"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Slovenia")
axis(1, at = seq(min(manis$year[manis$country=="Slovenia"&manis$regional==0]), max(manis$year[manis$country=="Slovenia"&manis$regional==0]), by = 1), las = 2)
dev.off()

# other 

postscript("is_nat.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Iceland"&manis$regional==0] ~ as.character(manis$acronym[manis$country=="Iceland"&manis$regional==0]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Iceland")
axis(1, at = seq(min(manis$year[manis$country=="Iceland"&manis$regional==0]), max(manis$year[manis$country=="Iceland"&manis$regional==0]), by = 1), las = 2)
dev.off()


#########
#REGIONS#
#########

#define regional subset via switch 

#region plots 
postscript("at_reg.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Austria"&manis$regional==1] ~ as.character(manis$acronym[manis$country=="Austria"&manis$regional==1]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Austria (regional)")
axis(1, at = seq(min(manis$year[manis$country=="Austria"&manis$regional==1]), max(manis$year[manis$country=="Austria"&manis$regional==1]), by = 1), las = 2)
dev.off()

postscript("be_reg.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Belgium"&manis$regional==1] ~ as.character(manis$acronym[manis$country=="Belgium"&manis$regional==1]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Belgium (regional)")
axis(1, at = seq(min(manis$year[manis$country=="Belgium"&manis$regional==1]), max(manis$year[manis$country=="Belgium"&manis$regional==1]), by = 1), las = 2)
dev.off()

postscript("cz_reg.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Czech Republic"&manis$regional==1] ~ as.character(manis$acronym[manis$country=="Czech Republic"&manis$regional==1]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Czech Republic (regional)")
axis(1, at = seq(min(manis$year[manis$country=="Czech Republic"&manis$regional==1]), max(manis$year[manis$country=="Czech Republic"&manis$regional==1]), by = 1), las = 2)
dev.off()

postscript("ch_reg.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Switzerland"&manis$regional==1] ~ as.character(manis$acronym[manis$country=="Switzerland"&manis$regional==1]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Switzerland (regional)")
axis(1, at = seq(min(manis$year[manis$country=="Switzerland"&manis$regional==1]), max(manis$year[manis$country=="Switzerland"&manis$regional==1]), by = 1), las = 2)
dev.off()

postscript("de_reg.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Germany"&manis$regional==1] ~ as.character(manis$acronym[manis$country=="Germany"&manis$regional==1]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Germany (regional)")
axis(1, at = seq(min(manis$year[manis$country=="Germany"&manis$regional==1]), max(manis$year[manis$country=="Germany"&manis$regional==1]), by = 1), las = 2)
dev.off()

postscript("es_reg.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Spain"&manis$regional==1] ~ as.character(manis$acronym[manis$country=="Spain"&manis$regional==1]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Spain (regional)")
axis(1, at = seq(min(manis$year[manis$country=="Spain"&manis$regional==1]), max(manis$year[manis$country=="Spain"&manis$regional==1]), by = 1), las = 2)
dev.off()

postscript("uk_reg.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="UK"&manis$regional==1] ~ as.character(manis$acronym[manis$country=="UK"&manis$regional==1]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for United Kingdom (regional)")
axis(1, at = seq(min(manis$year[manis$country=="UK"&manis$regional==1]), max(manis$year[manis$country=="UK"&manis$regional==1]), by = 1), las = 2)
dev.off()

postscript("se_reg.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Sweden"&manis$regional==1] ~ as.character(manis$acronym[manis$country=="Sweden"&manis$regional==1]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Sweden (regional)")
axis(1, at = seq(min(manis$year[manis$country=="Sweden"&manis$regional==1]), max(manis$year[manis$country=="Sweden"&manis$regional==1]), by = 1), las = 2)
dev.off()

postscript("nl_reg.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Netherlands"&manis$regional==1] ~ as.character(manis$acronym[manis$country=="Netherlands"&manis$regional==1]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Netherlands (regional)")
axis(1, at = seq(min(manis$year[manis$country=="Netherlands"&manis$regional==1]), max(manis$year[manis$country=="Netherlands"&manis$regional==1]), by = 1), las = 2)
dev.off()

# Italy Lombardy 
postscript("it_reg.eps", width = 1000, height = 1000)
stripchart(manis$year[manis$country=="Italy"&manis$regional==1] ~ as.character(manis$acronym[manis$country=="Italy"&manis$regional==1]),pch=3,ylab="Party Acronym",xlab="",xaxt="n",cex=1.5,cex.axis=.5,main="Coverage for Lombardy (regional)")
axis(1, at = seq(min(manis$year[manis$country=="Italy"&manis$regional==1]), max(manis$year[manis$country=="Italy"&manis$regional==1]), by = 1), las = 2)
dev.off()


############
#Party list#
############

#Create .csv / full lists for LaTex/documentation 

cmp1 <- manis[manis$regional==0,]
# 1230 national 

cmp2 <- manis[manis$regional==1,]
# 2184 regional 

cmp1a  <- aggregate(cmp1, by=list(cmp1$country,cmp1$cmpcode,cmp1$acronym,cmp1$partyengl),FUN=mean,na.rm=TRUE)
cmp1a <- subset(cmp1a, select=c(Group.1,Group.2,Group.3,Group.4))
cmp1a <- cmp1a[order(cmp1a$Group.2),]
names(cmp1a)[names(cmp1a)=="Group.1"] <- "Country"
names(cmp1a)[names(cmp1a)=="Group.2"] <- "CMP code"
names(cmp1a)[names(cmp1a)=="Group.3"] <- "Acronym"
names(cmp1a)[names(cmp1a)=="Group.4"] <- "Party"

cmp2a  <- aggregate(cmp2, by=list(cmp2$country,cmp2$cmpcode,cmp2$acronym,cmp2$partyengl),FUN=mean,na.rm=TRUE)
cmp2a <- subset(cmp2a, select=c(Group.1,Group.2,Group.3,Group.4))
cmp2a <- cmp2a[order(cmp2a$Group.2),]
names(cmp2a)[names(cmp2a)=="Group.1"] <- "Country"
names(cmp2a)[names(cmp2a)=="Group.2"] <- "CMP code"
names(cmp2a)[names(cmp2a)=="Group.3"] <- "Acronym"
names(cmp2a)[names(cmp2a)=="Group.4"] <- "Party"

write.csv(cmp1a, file="cmpcode_list_national.csv")

write.csv(cmp2a, file="cmpcode_list_regional.csv")


#Save as LaTex table
print(xtable(cmp1a, type = "latex", digits=c(0,0,0,0,0)), include.rownames=FALSE, file = "tab_national.tex")

print(xtable(cmp2a, type = "latex", digits=c(0,0,0,0,0)), include.rownames=FALSE, file = "tab_regional.tex")

#Also possible per nation/region...


## 
# Count COHESIFY 
# all subnational at, be, cz, de, es, uk, se, nl, ch - add it
lengthreg <- length(manis$year[manis$regional==1]) 
lengthreg

# all national since 2013 in a number of countries (de, ie, pl, it, nl, uk, es - add cy, gr, ro, hu, si)
lengthnat12 <- length(manis$year[manis$regional==0&manis$year>=2013]) 
lengthnat12 

# control older national
lengthnatprior <- length(manis$year[manis$regional==0&manis$year<2013]) 
lengthnatprior 

national <- lengthnat12 + lengthnatprior 
national

# to be added 
other <- 6 + 33 + 33 + 27 + 39 
lombardei <- 12 

length_cohesify12 <- lengthreg + lengthnat12 + other + lombardei 
length_cohesify12 

  
#end of file 
