# EUMAP_table_1a

The Danish table 1a is based on the scripts distributed in 2016 and ammendent to Dainsh fishery in 2016 - Joel has made a newer version, but landings of cod in per subdivions in area 27.3.a are not included

*to do*; 

1.    Can't remember what we changed in 2016 - check _DNK against Joel's program from 2016
2.    Check Joel's version 2016 and 2018 agiast each other

Before running a couple of things need to be done

1.    

## Inputs



# 1_table_1a_linkage_table_correcting_latinName

*2018 - only changed 


# 2_table_1a

# Checks

Scripts in the /checks folder 

## check_spp_in_EUROSTAT
Different countries report same species with different species 'aggregation' level (species / family) e.g. boarfish are reported both as Capros aper & Caproidae. Further EUMAP sometimes as for species at the family level e.g. Argentina spp., which in EUROSTAT are the following species; c("CAA","CAB","CAS","CAT") - 

This script is used to check which spp codes to merge in 1_table_1a_linkage_table_correcting_latinName, so all relevant landings are extracted from EROSTAT. 

THe scrit is also used to check some of the outputs against the original figures in EUROSTAT