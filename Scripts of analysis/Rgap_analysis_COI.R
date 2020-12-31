BOLD_GenBankCOI_AzNAT<-read.csv2(file = "BOLD_GenBankCOI_AzNAT_Partial.csv")
BOLD_GenBankCOI_AzNAT_checklist<-read.csv2(file = "list_az_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBankCOI_AzNAT$species_name))
species<-as.vector(BOLD_GenBankCOI_AzNAT_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_COI_AzNAT.csv")

#Az_NIS

BOLD_GenBankCOI_AzNIS<-read.csv2(file = "BOLD_GenBankCOI_AzNIS_Partial.csv")
BOLD_GenBankCOI_AzNIS_checklist<-read.csv2(file = "list_az_nis.txt")


uniquespecies<-as.vector(unique(BOLD_GenBankCOI_AzNIS$species_name))
species<-as.vector(BOLD_GenBankCOI_AzNIS_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_COI_AzNIS.csv")

#CAN_NAT

BOLD_GenBankCOI_CanNAT<-read.csv2(file = "BOLD_GenBankCOI_CanNAT_Partial.csv")
BOLD_GenBankCOI_CanNAT_checklist<-read.csv2(file = "list_can_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBankCOI_CanNAT$species_name))
species<-as.vector(BOLD_GenBankCOI_CanNAT_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_COI_CanNAT.csv")

#CAN_NIS

BOLD_GenBankCOI_CanNIS<-read.csv2(file = "BOLD_GenBankCOI_CanNIS_Partial.csv")
BOLD_GenBankCOI_CanNIS_checklist<-read.csv2(file = "list_can_nis.txt")


uniquespecies<-as.vector(unique(BOLD_GenBankCOI_CanNIS$species_name))
species<-as.vector(BOLD_GenBankCOI_CanNIS_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_COI_CanNIS.csv")

#MAD_NAT

BOLD_GenBankCOI_MadNAT<-read.csv2(file = "BOLD_GenBankCOI_MadNAT_Partial.csv")
BOLD_GenBankCOI_MadNAT_checklist<-read.csv2(file = "list_mad_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBankCOI_MadNAT$species_name))
species<-as.vector(BOLD_GenBankCOI_MadNAT_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_COI_MadNAT.csv")

#MAD_NIS

BOLD_GenBankCOI_MadNIS<-read.csv2(file = "BOLD_GenBankCOI_MadNIS_Partial.csv")
BOLD_GenBankCOI_MadNIS_checklist<-read.csv2(file = "list_mad_nis.txt")


uniquespecies<-as.vector(unique(BOLD_GenBankCOI_MadNIS$species_name))
species<-as.vector(BOLD_GenBankCOI_MadNIS_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_COI_MadNIS.csv")

#SELV_NAT

BOLD_GenBankCOI_SelvNAT<-read.csv2(file = "BOLD_GenBankCOI_SelvNAT_Partial.csv")
BOLD_GenBankCOI_SelvNAT_checklist<-read.csv2(file = "list_selv_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBankCOI_SelvNAT$species_name))
species<-as.vector(BOLD_GenBankCOI_SelvNAT_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_COI_SelvNAT.csv")

