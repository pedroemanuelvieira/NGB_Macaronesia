#Az_nat_300bp

BOLD_GenBanks18_AzNAT<-read.csv2(file = "BOLD_GenBanks18_AzNAT_300_Partial.csv")
BOLD_GenBanks18_AzNAT_checklist<-read.csv2(file = "list_az_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNAT$species_name))
species<-as.vector(BOLD_GenBanks18_AzNAT_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_18S_AzNAT_300.csv")

#Az_nat_500bp

BOLD_GenBanks18_AzNAT_500<-read.csv2(file = "BOLD_GenBanks18_AzNAT_500_Partial.csv")
BOLD_GenBanks18_AzNAT_500_checklist<-read.csv2(file = "list_az_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNAT_500$species_name))
species<-as.vector(BOLD_GenBanks18_AzNAT_500_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_18S_AzNAT_500.csv")

#Can_Nat_300bp

BOLD_GenBanks18_AzNIS_300<-read.csv2(file = "BOLD_GenBanks18_CanNAT_300_Partial.csv")
BOLD_GenBanks18_AzNIS_300_checklist<-read.csv2(file = "list_can_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_300$species_name))
species<-as.vector(BOLD_GenBanks18_AzNIS_300_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_18S_CanNat_300bp.csv")

#Can_Nat_500bp

BOLD_GenBanks18_AzNIS_300<-read.csv2(file = "BOLD_GenBanks18_CanNAT_500_Partial.csv")
BOLD_GenBanks18_AzNIS_300_checklist<-read.csv2(file = "list_can_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_300$species_name))
species<-as.vector(BOLD_GenBanks18_AzNIS_300_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_18S_CanNat_500bp.csv")

# Mad_Nat_300bp

BOLD_GenBanks18_AzNIS_300<-read.csv2(file = "BOLD_GenBanks18_MadNAT_300_Partial.csv")
BOLD_GenBanks18_AzNIS_300_checklist<-read.csv2(file = "list_mad_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_300$species_name))
species<-as.vector(BOLD_GenBanks18_AzNIS_300_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_18S_MadNat_300bp.csv")

#Mad_Nat_500bp

BOLD_GenBanks18_AzNIS_300<-read.csv2(file = "BOLD_GenBanks18_MadNAT_500_Partial.csv")
BOLD_GenBanks18_AzNIS_300_checklist<-read.csv2(file = "list_mad_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_300$species_name))
species<-as.vector(BOLD_GenBanks18_AzNIS_300_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_18S_MadNat_500bp.csv")

#Az_NIS_300bp

BOLD_GenBanks18_AzNIS_500<-read.csv2(file = "taxaGenbank_s18_AzNIS_300_Partial.csv")
BOLD_GenBanks18_AzNIS_500_checklist<-read.csv2(file = "list_az_nis.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_500$Taxa))
species<-as.vector(BOLD_GenBanks18_AzNIS_500_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_taxaGenbank_s18_AzNIS_300bp.csv")

#Az_NIS_500bp

BOLD_GenBanks18_AzNIS_500<-read.csv2(file = "taxaGenbank_s18_AzNIS_500_Partial.csv")
BOLD_GenBanks18_AzNIS_500_checklist<-read.csv2(file = "list_az_nis.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_500$Taxa))
species<-as.vector(BOLD_GenBanks18_AzNIS_500_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_taxaGenbank_s18_AzNIS_500bp.csv")

#Can_NIS_300bp

BOLD_GenBanks18_AzNIS_500<-read.csv2(file = "taxaGenbank_s18_CanNIS_300_Partial.csv")
BOLD_GenBanks18_AzNIS_500_checklist<-read.csv2(file = "list_can_nis.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_500$Taxa))
species<-as.vector(BOLD_GenBanks18_AzNIS_500_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_taxaGenbank_s18_CanNIS_300bp.csv")

#Can_NIS_500bp

BOLD_GenBanks18_AzNIS_500<-read.csv2(file = "taxaGenbank_s18_CanNIS_500_Partial.csv")
BOLD_GenBanks18_AzNIS_500_checklist<-read.csv2(file = "list_can_nis.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_500$Taxa))
species<-as.vector(BOLD_GenBanks18_AzNIS_500_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_taxaGenbank_s18_CanNIS_500bp.csv")

#Mad_NIS_300bp

BOLD_GenBanks18_AzNIS_500<-read.csv2(file = "taxaGenbank_s18_MadNIS_300_Partial.csv")
BOLD_GenBanks18_AzNIS_500_checklist<-read.csv2(file = "list_mad_nis.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_500$Taxa))
species<-as.vector(BOLD_GenBanks18_AzNIS_500_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_taxaGenbank_s18_MadNIS_300bp.csv")

#Mad_NIS_500bp

BOLD_GenBanks18_AzNIS_500<-read.csv2(file = "taxaGenbank_s18_MadNIS_500_Partial.csv")
BOLD_GenBanks18_AzNIS_500_checklist<-read.csv2(file = "list_mad_nis.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_500$Taxa))
species<-as.vector(BOLD_GenBanks18_AzNIS_500_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_taxaGenbank_s18_MadNIS_500bp.csv")

#Selv_NAT_300bp

BOLD_GenBanks18_AzNIS_500<-read.csv2(file = "taxaGenbank_s18_SelvNAT_300_Partial.csv")
BOLD_GenBanks18_AzNIS_500_checklist<-read.csv2(file = "list_selv_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_500$Taxa))
species<-as.vector(BOLD_GenBanks18_AzNIS_500_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_taxaGenbank_s18_SelvNAT_300bp.csv")

#Selv_NAT_500bp

BOLD_GenBanks18_AzNIS_500<-read.csv2(file = "taxaGenbank_s18_SelvNAT_500_Partial.csv")
BOLD_GenBanks18_AzNIS_500_checklist<-read.csv2(file = "list_selv_nat.txt")


uniquespecies<-as.vector(unique(BOLD_GenBanks18_AzNIS_500$Taxa))
species<-as.vector(BOLD_GenBanks18_AzNIS_500_checklist$Taxa)


#uniquespecies<-unique(AnimalsCOI_BOLD500$species_name)

Gap_analysis<-species %in% uniquespecies

List<-cbind(species, Gap_analysis)

write.csv2(List,"Gap_analysis_taxaGenbank_s18_SelvNAT_500bp.csv")

