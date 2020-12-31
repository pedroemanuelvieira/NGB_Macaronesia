library(bold)
library(tidyverse)
library(rentrez)

###taxaCOI####
list<-read.csv2("list_can_nat.txt")

#BOLD data
#Download bold data
listBOLD1<-bold_seqspec(taxon=list$Taxa[1:300], format = "tsv")
listBOLD2<-bold_seqspec(taxon=list$Taxa[301:600], format = "tsv")
listBOLD3<-bold_seqspec(taxon=list$Taxa[601:900], format = "tsv")
listBOLD4<-bold_seqspec(taxon=list$Taxa[901:1200], format = "tsv")
listBOLD5<-bold_seqspec(taxon=list$Taxa[1201:1500], format = "tsv")
listBOLD6<-bold_seqspec(taxon=list$Taxa[1501:1637], format = "tsv")
listBOLD<-rbind(listBOLD1, listBOLD2,listBOLD3,listBOLD4, listBOLD5,listBOLD6)

listBOLD$number<-str_count(listBOLD$nucleotides, pattern="[A-Z]")

#Add information mined from genbank
listBOLD$GenbankMined<-listBOLD$institution_storing=="Mined from GenBank, NCBI"

#Select COI
listBOLD_COI_raw<-listBOLD[listBOLD$markercode=="COI-5P",]

#Select COI>500
listBOLD_COI<-listBOLD_COI_raw[listBOLD_COI_raw$number>499,]

#Save and export dataframe downloaded from BOLD for COI>499
write.csv2(listBOLD_COI, file="listBOLD_COI.csv")

#Get stats for each species for COI
listBOLD_COI_stats <- listBOLD_COI %>%
  group_by(phylum_name, class_name, species_name, species_taxID)%>%
  summarize(Public_BOLD = table(species_name), GenBank_mining = sum(GenbankMined))

ids<-c(1:274,276:321,323:524)#Aqui colocas todos, excepto os que não dão erro, i.e.275 e 323

listBOLD_COI_stats2<-bold_tax_id(id=listBOLD_COI_stats$species_taxID[ids], dataTypes = "stats")

#275 e 323 não podem ser pesquisados. Eles originam o erro.

listBOLD_COI_statsfinal<-cbind.data.frame(listBOLD_COI_stats[ids,], listBOLD_COI_stats2)

#Export excel
write.csv2(listBOLD_COI_statsfinal, file="listBOLD_COI_statsfinal.csv")

#Genbank Data

#Genbank Data COI>500
search_genbank_COI <- function(x){
  query2 <- paste(x, "[Organism] AND (((COI[Gene] OR CO1[Gene] OR COXI[Gene] OR COX1[Gene]) AND (500[SLEN]:3000[SLEN])) OR complete genome[All Fields] OR mitochondrial genome[All Fields])")
  COI<-entrez_search(db="nuccore", term=query2, retmax=10000)$count
}

GenBanktaxaCOI<-lapply(list$Taxa, search_genbank_COI)
GenBanktaxaCOIdf<-t(as.data.frame(GenBanktaxaCOI))
GenBanktaxaCOIfinal<-cbind.data.frame(list, GenBanktaxaCOIdf)

#export excel
write.csv2(GenBanktaxaCOIfinal, file="taxaGenbank_COI.csv")

#change column name from taxa to species_name to allow to merge in the next step
names(GenBanktaxaCOIfinal)[names(GenBanktaxaCOIfinal) == "Taxa"] <- "species_name"


#Merge of Genbank and BOLD 
Final<-left_join(GenBanktaxaCOIfinal,listBOLD_COI_statsfinal,by="species_name")

#Export excel
write.csv2(Final, file="BOLD_GenBankCOI.csv")
