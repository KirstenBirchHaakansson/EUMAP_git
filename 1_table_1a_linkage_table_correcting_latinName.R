
#Based on 1_Table1A_latinName_vs_ASFIS from 2016

library(plyr)

sharePath <- "M:/DCF/AP/2017/Programs/Tabel_1A/"

share<-read.table(file.path(sharePath, 'EUMAP_Table1A_Linkage_EUROSTAT and EC_TAC_DNK.csv'), sep=";",header=T, colClasses = ("character"))

share<-subset(share, latinName!="Elasmobranchii")

ASFIS   <- read.table(file.path(sharePath,'ASFIS_sp_Feb_2012.txt'), header=TRUE, sep="\t", as.is=TRUE)
ASFIS$latinName<-ASFIS$Scientific_name

#Compare latinName to ASFIS

asfis<-merge(share,ASFIS,all.x=T,by.x=c("latinName"),by.y=c("latinName"))
asfisNo<-subset(asfis,is.na(Scientific_name))

#run spp program to find the correct species

asfis$latinName_new<-ifelse(asfis$latinName=="Ammodytidae", "Ammodytes spp,Ammodytes tobianus", 
                            ifelse(asfis$latinName=="Anarhichas spp.", "Anarhichas spp,Anarhichas minor,Anarhichas denticulatus,Anarhichas lupus", 
                            ifelse(asfis$latinName=="Aphanopus spp.", "Aphanopus spp,Aphanopus intermedius,Aphanopus carbo",
                            ifelse(asfis$latinName=="Argentina spp.","Argentina spp,Argentina sphyraena,Argentina silus,Argentina kagoshimae,Argentina elongata",
                            ifelse(asfis$latinName=="Aristeomorpha foliacea", "Aristaeomorpha foliacea",
                            ifelse(asfis$latinName=="Beryx spp.", "Beryx spp,Beryx splendens,Beryx decadactylus",
                            ifelse(asfis$latinName=="Illex spp., Todarodes spp.", "Illex spp,Todarodes spp,Illex oxygonius,Illex argentinus,Illex coindetii,Illex illecebrosus,Todarodes angolensis,Todarodes pacificus,Todarodes filippovae,Todarodes sagittatus",
                            ifelse(asfis$latinName=="Capros aper", "Capros aper,Caproidae",       
                            ifelse(asfis$latinName=="Pandalus spp.", "Pandalus spp,Pandalus amplus,Pandalus nipponensis,Pandalus kessleri,Pandalus goniurus,Pandalus danae,Pandalus montagui,Pandalus jordani,Pandalus borealis,Pandalus platyceros,Pandalus hypsinotus",
                            ifelse(asfis$latinName=="Scomber colias", "Scomber japonicus",
                            ifelse(asfis$latinName=="Scomber spp.", "Scomber spp,Scomber australasicus,Scomber scombrus,Scomber japonicus",
                            ifelse(asfis$latinName=="Solea vulgaris","Solea solea",
                            ifelse(asfis$latinName=="Trigla lucerna", "Chelidonichthys lucerna",
                            ifelse(asfis$latinName=="Trisopterus esmarki", "Trisopterus esmarkii",
                            ifelse(asfis$latinName=="Trisopterus spp.", "Trisopterus spp,Trisopterus luscus,Trisopterus minutus,Trisopterus esmarkii",
                                   asfis$latinName)))))))))))))))

asfis$latinComm<-ifelse(is.na(asfis$X3A_CODE),"latinName_old not in ASFIS", "NA")

names(asfis)

share_new<-rename(asfis, c("latinName"="latinName_old", "latinName_new"="latinName"))

names(share)
names(share_new)

for (i in 1:nrow(share_new)) {
  share_new$reportingName[i] <- unlist(strsplit(share_new$latinName[i], split=","))[1]
  }

share_new<-share_new[, c("region","sppName","latinName","stockID","area","areaBis","TAC.area.description","reportingName","latinName_old")]

asfis_new<-merge(share_new,ASFIS,all.x=T,by.x=c("latinName"),by.y=c("latinName"))
asfis_newNo<-subset(asfis_new,is.na(Scientific_name))

write.table(share_new,file.path(sharePath,"EUMAP_Table1A_Linkage_EUROSTAT and EC_TAC_DNK_v3.csv"), sep=";",row.names=FALSE)
