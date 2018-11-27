# EUMAP_table_1a

The Danish table 1a is based on the scripts distributed in 2016 and ammendent to Dainsh fishery in 2016 - Joel has made a newer version, but landings of cod in per subdivions in area 27.3.a are not included

*to do*; 

1.    Can't remember what we changed in 2016 - check _DNK against Joel's program from 2016
2.    Check Joel's version 2016 and 2018 agiast each other
3.    Split flounder in the Baltic

Before running a couple of things need to be done

1.    

## Inputs

1.    fish_ca_atl27.tsv: new file downloaded from EORUSTAT https://ec.europa.eu/eurostat/web/fisheries/data/database
2.    EU opening quota 2017.csv: Using the file Joel distributed September 2018 *remember to add code for StockID in script 3_*
3.    Nephrops landings 2015.csv: Using the file from 2016. Don't know who made it and how.
4.    RCM MED landings.csv: Using the file from 2016 - not relevant for Denmark
5.    patch_codIIIa_DNK.txt: Updated the file from 2016 with figures from advice sheet
6.    geo.def: Using the file from 2016
7.    ASFIS_sp_Feb_2012.txt: Using the file from 2016. 
8.    EUMAP_Table1A_Linkage_EUROSTAT and EC_TAC_DNK_v3.csv: Using the file from 2016, not quite sure how is was made, but think script 1_ and 2_ should be ok for making the file.



# 1_table_1a_linkage_table_correcting_latinName

*2018 - not runned (but started to update) -> using the likage file from 2016*

The latinName in the linkage table do not always follow the names in the ASFIS file - this is correct here.

Further different countries report same species with different species 'aggregation' level (species / family) e.g. boarfish are reported both as Capros aper & Caproidae -> all needed scientific names are inserted in latinName. Further EUMAP sometimes ask for species at the family level e.g. Argentina spp., which in EUROSTAT are the following species; c("CAA","CAB","CAS","CAT") -> also here all needed scientific names are inserted. ...... check 


# 2_table_1a_linkage_table_correcting_stockId

*2018 - not runned & not changed -> using the likage file from 2016*

# 3_table_1a_filling_DNK_version

*2018 - no major changes*

Based on the script in 2016. Input files changed and a couple of minor changes.

*It would be nice to get the script out of R markdown, so it is possible to track changes*

# 4_


# Checks

Scripts in the /checks folder 

## check_spp_in_EUROSTAT

This script is used to check which species to merge in 1_table_1a_linkage_table_correcting_latinName, so all relevant landings are extracted from EROSTAT. 
The script is also used to check some of the outputs against the original figures in EUROSTAT.

## check_final_table_1a_between_years
