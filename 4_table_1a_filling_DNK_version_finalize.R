
#Based on 4_Filling Table 1A_DNK_v3_final from 2016

#Final work on table 1A
setwd('M:/DCF/AP/2017/Programs/Tabel_1A/')

t1a <- read.csv('DK_table1A_filled_DNK_v3.csv', header=TRUE, sep=';', as.is=TRUE)
t1a <- subset(t1a, region!="Mediterranean and Black Sea")
t1a$MS <- "DNK"
t1a$area_new<-t1a$area
t1a$areaBis_new<-t1a$areaBis
t1a$region_new<-t1a$region
t1a$commDNK<-""

t1a$select[t1a$spp == "Nephrops norvegicus" & t1a$area=="functional units 32 (TAC IIa, IV)"] <-"Y"
t1a$commDNK[t1a$spp == "Nephrops norvegicus" & t1a$area=="functional units 32 (TAC IIa, IV)"] <- "TAC covers all of VI. Selected for sampling due to high pct. of landings"
t1a$refYears[t1a$spp == "Nephrops norvegicus" & t1a$area=="functional units 32 (TAC IIa, IV)"] <-"2015"

t1a$select[t1a$spp == "Nephrops norvegicus" & t1a$area=="functional units 33 (TAC IIa, VI)"] <-"Y"
t1a$commDNK[t1a$spp == "Nephrops norvegicus" & t1a$area=="functional units 33 (TAC IIa, VI)"] <- "TAC covers all of VI. Selected for sampling due to high pct. of landings"
t1a$refYears[t1a$spp == "Nephrops norvegicus" & t1a$area=="functional units 33 (TAC IIa, VI)"] <-"2015"

t1a$area_new[t1a$spp == "Solea solea" & t1a$area=="IIIa"] <- "IIIa, 22"
t1a$areaBis_new[t1a$spp == "Solea solea" & t1a$area=="IIIa"] <- "27_3_A,27_3_C_22"
t1a$commDNK[t1a$spp == "Solea solea" & t1a$area=="IIIa"] <- "Combined with area 22 for sampling, since stock covers both IIIa and 22"
t1a$select[t1a$spp == "Solea solea" & t1a$area=="22"] <-"Y"
t1a$area_new[t1a$spp == "Solea solea" & t1a$area=="22"] <- "IIIa, 22"
t1a$region_new[t1a$spp == "Solea solea" & t1a$area=="22"] <- "North Sea and Eastern Arctic"
t1a$areaBis_new[t1a$spp == "Solea solea" & t1a$area=="22"] <- "27_3_A,27_3_C_22"
t1a$commDNK[t1a$spp == "Solea solea" & t1a$area=="22"] <- "Selected and combined with IIIa for sampling, since stock covers both IIIa and 22"

t1a$select[t1a$spp == "Salmo salar" & t1a$area=="22-31"] <-"Y"
t1a$commDNK[t1a$spp == "Salmo salar" & t1a$area=="22-31"] <-"Selected due to ...."

t1a$area_new[t1a$spp == "Glyptocephalus cynoglossus" & t1a$area=="IIIa"] <- "IIIa, IV"
t1a$areaBis_new[t1a$spp == "Glyptocephalus cynoglossus" & t1a$area=="IIIa"] <- "27_3_A,27_4"
t1a$commDNK[t1a$spp == "Glyptocephalus cynoglossus" & t1a$area=="IIIa"] <- "Combined with area IV for sampling, since stock covers both areas"
t1a$area_new[t1a$spp == "Glyptocephalus cynoglossus" & t1a$area=="IV"] <- "IIIa, IV"
t1a$areaBis_new[t1a$spp == "Glyptocephalus cynoglossus" & t1a$area=="IV"] <- "27_3_A,27_4"
t1a$commDNK[t1a$spp == "Glyptocephalus cynoglossus" & t1a$area=="IV"] <- "Combined with area IIIa for sampling, since stock covers both areas"

t1a$area_new[t1a$spp == "Limanda limanda" & t1a$area=="IIIa"] <- "IIIa, IV, VIId"
t1a$areaBis_new[t1a$spp == "Limanda limanda" & t1a$area=="IIIa"] <- "27_3_A,27_4,27_7_D"
t1a$commDNK[t1a$spp == "Limanda limanda" & t1a$area=="IIIa"] <- "Combined with area IV for sampling, since stock covers both areas"
t1a$area_new[t1a$spp == "Limanda limanda" & t1a$area=="IV, VIId"] <- "IIIa, IV, VIId"
t1a$areaBis_new[t1a$spp == "Limanda limanda" & t1a$area=="IV, VIId"] <- "27_3_A,27_4,27_7_D"
t1a$commDNK[t1a$spp == "Limanda limanda" & t1a$area=="IV, VIId"] <- "Combined with area IIIa for sampling, since stock covers both areas"

t1a$select[t1a$spp == "Micromesistius poutassou" & t1a$area=="IV, VIId"] <-"N"
t1a$commDNK[t1a$spp == "Micromesistius poutassou" & t1a$area=="IV, VIId"] <-"Unselected, since areas are covered in the North Atlantic"

t1a$select[t1a$spp == "Scomber scombrus" & t1a$area=="II"] <-"N"
t1a$commDNK[t1a$spp == "Scomber scombrus" & t1a$area=="II"] <-"Unselected, since areas are covered in the North Atlantic"
t1a$select[t1a$spp == "Scomber scombrus" & t1a$area=="IV, VIId"] <-"N"
t1a$commDNK[t1a$spp == "Scomber scombrus" & t1a$area=="IV, VIId"] <-"Unselected, since areas are covered in the North Atlantic"

t1a$select[t1a$spp == "Merluccius merluccius" & t1a$area=="IIIa"] <-"N"
t1a$commDNK[t1a$spp == "Merluccius merluccius" & t1a$area=="IIIa"] <-"Unselected, since areas are covered in the North Atlantic"
t1a$select[t1a$spp == "Merluccius merluccius" & t1a$area=="IV VII"] <-"N"
t1a$commDNK[t1a$spp == "Merluccius merluccius" & t1a$area=="IV VII"] <-"Unselected, since areas are covered in the North Atlantic"
t1a$select[t1a$spp == "Merluccius merluccius" & t1a$area=="IIIa, IV, VI, VII, VIIIab"] <-"Y"
t1a$commDNK[t1a$spp == "Merluccius merluccius" & t1a$area=="IIIa, IV, VI, VII, VIIIab"] <-"Selected, since areas cover the stock"

t1a$area_new[t1a$spp == "Microstomus kitt" & t1a$area=="IV, VIId"] <- "IIIa, IV, VIId"
t1a$areaBis_new[t1a$spp == "Microstomus kitt" & t1a$area=="IV, VIId"] <- "27_3_A,27_4,27_7_D"
t1a$commDNK[t1a$spp == "Microstomus kitt" & t1a$area=="IV, VIId"] <- "Area IIIa included for sampling, since stock covers this area as well"

t1a$area_new[t1a$spp == "Molva molva" & t1a$area=="IV"] <- "IIIa, IV"
t1a$areaBis_new[t1a$spp == "Molva molva" & t1a$area=="IV"] <- "27_3_A,27_4"
t1a$commDNK[t1a$spp == "Molva molva" & t1a$area=="IV"] <- "Area IIIa included for sampling, since stock covers this area as well"

t1a$area_new[t1a$spp == "Melanogrammus aeglefinus" & t1a$area=="IIIa"] <- "IIIa, IV"
t1a$areaBis_new[t1a$spp == "Melanogrammus aeglefinus" & t1a$area=="IIIa"] <- "27_3_A,27_4"
t1a$commDNK[t1a$spp == "Melanogrammus aeglefinus" & t1a$area=="IIIa"] <- "Combined with area IV for sampling, since stock covers both areas"
t1a$select[t1a$spp == "Melanogrammus aeglefinus" & t1a$area=="IV"] <-"Y"
t1a$area_new[t1a$spp == "Melanogrammus aeglefinus" & t1a$area=="IV"] <- "IIIa, IV"
t1a$areaBis_new[t1a$spp == "Melanogrammus aeglefinus" & t1a$area=="IV"] <- "27_3_A,27_4"
t1a$commDNK[t1a$spp == "Melanogrammus aeglefinus" & t1a$area=="IV"] <- "Selected and combined with IIIa for sampling, since stock covers both areas"

t1a$area_new[t1a$spp == "Pollachius virens" & t1a$area=="IIIa"] <- "IIIa, IV"
t1a$areaBis_new[t1a$spp == "Pollachius virens" & t1a$area=="IIIa"] <- "27_3_A,27_4"
t1a$commDNK[t1a$spp == "Pollachius virens" & t1a$area=="IIIa"] <- "Combined with area IV for sampling, since stock covers both areas"
t1a$select[t1a$spp == "Pollachius virens" & t1a$area=="IV"] <-"Y"
t1a$area_new[t1a$spp == "Pollachius virens" & t1a$area=="IV"] <- "IIIa, IV"
t1a$areaBis_new[t1a$spp == "Pollachius virens" & t1a$area=="IV"] <- "27_3_A,27_4"
t1a$commDNK[t1a$spp == "Pollachius virens" & t1a$area=="IV"] <- "Selected and combined with IIIa for sampling, since stock covers both areas"

t1a$select[t1a$spp == "Gadus morhua" & t1a$area=="IIIaS"] <-"Y"
t1a$commDNK[t1a$spp == "Gadus morhua" & t1a$area=="IIIaS"] <-"Selected due to ...."

t1a$area_new[t1a$spp == "Pandalus borealis" & t1a$area=="IIIa"] <- "IIIa, IVa"
t1a$areaBis_new[t1a$spp == "Pandalus borealis" & t1a$area=="IIIa"] <- "27_3_A,27_4_A"
t1a$commDNK[t1a$spp == "Pandalus borealis" & t1a$area=="IIIa"] <- "Combined with area IVa for sampling, since stock and sampling covers the fishery the Norway Depp"
t1a$select[t1a$spp == "Pandalus borealis" & t1a$area=="IV"] <-"Y"
t1a$area_new[t1a$spp == "Pandalus borealis" & t1a$area=="IV"] <- "IIIa, IVa"
t1a$areaBis_new[t1a$spp == "Pandalus borealis" & t1a$area=="IV"] <- "27_3_A,27_4_A"
t1a$commDNK[t1a$spp == "Pandalus borealis" & t1a$area=="IV"] <- "Selected and combined with IIIa for sampling, since stock and sampling covers the fishery the Norway Depp"

t1a$select[t1a$spp == "Trachurus trachurus" & t1a$area=="IIa"] <-"N"
t1a$commDNK[t1a$spp == "Trachurus trachurus" & t1a$area=="IIa"] <-"Unselected, since areas are covered in the North Atlantic"

t1a$commDNK[t1a$spp == "Trachurus trachurus" & t1a$area=="IVbc, VIId"] <-"IVa excluded from area defintion, since this area is covered in the North Atlantic"

t1a$select[t1a$spp == "Crangon crangon" & t1a$area=="IV, VIId"] <-"Y"
t1a$commDNK[t1a$spp == "Crangon crangon" & t1a$area=="IV, VIId"] <-"Selected due to ...."

t1a$area_new[t1a$spp == "Trisopterus esmarkii" & t1a$area=="IV"] <- "IV,IIIa"
t1a$areaBis_new[t1a$spp == "Trisopterus esmarkii" & t1a$area=="IV"] <- "27_3_A,27_4"
t1a$commDNK[t1a$spp == "Trisopterus esmarkii" & t1a$area=="IV"] <- "Combined with area IIIa for sampling, since stock covers both areas"
t1a$select[t1a$spp == "Trisopterus esmarkii" & t1a$area=="IIIa"] <-"Y"
t1a$area_new[t1a$spp == "Trisopterus esmarkii" & t1a$area=="IIIa"] <- "IV,IIIa"
t1a$areaBis_new[t1a$spp == "Trisopterus esmarkii" & t1a$area=="IIIa"] <- "27_3_A,27_4"
t1a$commDNK[t1a$spp == "Trisopterus esmarkii" & t1a$area=="IIIa"] <- "Selected and combined with IV for sampling, since stock covers both areas"

t1a$commDNK[t1a$spp == "Selachii"] <- "It is not possible to calulate landings for these specis due to the resultion of the official statistic"
t1a$spp[t1a$spp == "Selachii"] <- "Selachii, Rajidae"

#Danish names 
nerv <- read.table('X:/SAS Library/Arter/art.csv', header=TRUE, sep=",", as.is=TRUE)
names(nerv)

t1b<-merge(t1a,nerv,by.x=c("spp"),by.y=c("faoLatin"),all.x=T)
t1b$ART[is.na(t1b$ART)]<-""

t1dup<-t1b[duplicated(t1b[,c("MS","refYears","spp","region","RFMO","area","select","landings","TAC","shareLanding","Thresh","Comments","commDNK","areaBis","speciesIncluded",
                             "area_new","areaBis_new","region_new")]),]

t1b<-t1b[!duplicated(t1b[,c("MS","refYears","spp","region","RFMO","area","select","landings","TAC","shareLanding","Thresh","Comments","commDNK","areaBis","speciesIncluded",
                           "area_new","areaBis_new","region_new")]),]

#merge comments
t1b<-t1b[,c("MS","refYears","spp","ART","region","RFMO","area","select","landings","TAC","shareLanding","Thresh","Comments","commDNK","areaBis","speciesIncluded",
            "area_new","areaBis_new","region_new")]

t1b$commentsFinal<-ifelse(t1b$Comments!="" & t1b$commDNK!="" & t1b$ART!="", paste("(",t1b$ART,")","|",t1b$Comments,"|",t1b$commDNK,sep=" "), 
                   ifelse(t1b$Comments!="" & t1b$commDNK!="" & t1b$ART=="", paste(t1b$Comments,"|",t1a$commDNK,sep=" "),
                          ifelse(t1b$Comments!="" & t1b$commDNK=="" & t1b$ART!="", paste("(",t1b$ART,")","|",t1b$Comments,sep=" "),
                          ifelse(t1b$Comments!="" & t1b$commDNK=="" & t1b$ART=="", t1b$Comments,
                                 ifelse(t1b$Comments=="" & t1b$commDNK!="" & t1b$ART!="", paste("(",t1b$ART,")","|",t1b$commDNK,sep=" "),
                                 ifelse(t1b$Comments=="" & t1b$commDNK!="" & t1b$ART=="", t1b$commDNK,
                                        ifelse(t1b$Comments=="" & t1b$commDNK=="" & t1b$ART!="", paste("(",t1b$ART,")",sep=" "),"")))))))

t1b<-t1b[,c("MS","refYears","spp","region","RFMO","area","select","landings","TAC","shareLanding","Thresh","commentsFinal","areaBis","speciesIncluded",
            "area_new","areaBis_new","region_new")]

write.table(t1b, "DK_table1A_filled_DNK_v3_final.csv", sep=';',row.names=FALSE, quote=FALSE)

