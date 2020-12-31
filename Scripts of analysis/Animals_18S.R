library(bold)
library(tidyverse)
library(rentrez)

###taxas18####
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

#Select s18
listBOLD_s18_raw<-listBOLD[listBOLD$markercode=="18S"|listBOLD$markercode=="18Sa",]

#Select S18>500
listBOLD_s18<-listBOLD_s18_raw[listBOLD_s18_raw$number>499,]

#Save and export dataframe downloaded from BOLD for s18>499
write.csv2(listBOLD_s18, file="listBOLD_s18.csv")

#Get stats for each species for s18
listBOLD_s18_stats <- listBOLD_s18 %>%
  group_by(phylum_name, class_name, species_name, species_taxID)%>%
  summarize(Public_BOLD = table(species_name), GenBank_mining = sum(GenbankMined))

ids<-c(1:274,276:321,323:524)#Aqui colocas todos, excepto os que não dão erro, i.e.275 e 323

listBOLD_s18_stats2<-bold_tax_id(id=listBOLD_s18_stats$species_taxID[ids], dataTypes = "stats")

#275 e 323 não podem ser pesquisados. Eles originam o erro.

listBOLD_s18_statsfinal<-cbind.data.frame(listBOLD_s18_stats[ids,], listBOLD_s18_stats2)

#Export excel
write.csv2(listBOLD_s18_statsfinal, file="listBOLD_s18_statsfinal.csv")

#Genbank Data

#Genbank Data S18>500
search_genbank_s18 <- function(x){
  query2 <- paste(x, "[Organism] AND (18s ribosomal RNA[Title] OR 18S rRNA[Title] OR 18S small subunit ribosomal RNA[Title] OR 18s ribosomal RNA[Gene] OR 18S rRNA[Gene] OR 18S small subunit ribosomal RNA[Gene]) AND (500[SLEN]:5000000[SLEN]))")
  S18<-entrez_search(db="nuccore", term=query2, retmax=10000)$count
}

GenBanktaxas18<-lapply(list$Taxa, search_genbank_s18)
GenBanktaxas18df<-t(as.data.frame(GenBanktaxas18))
GenBanktaxas18final<-cbind.data.frame(list, GenBanktaxas18df)

#export excel
write.csv2(GenBanktaxas18final, file="taxaGenbank_s18.csv")

#change column name from taxa to species_name to allow to merge in the next step
names(GenBanktaxas18final)[names(GenBanktaxas18final) == "Taxa"] <- "species_name"


#Merge of Genbank and BOLD 
Final<-left_join(GenBanktaxas18final,listBOLD_s18_statsfinal,by="species_name")

#Export excel
write.csv2(Final, file="BOLD_GenBanks18.csv")
