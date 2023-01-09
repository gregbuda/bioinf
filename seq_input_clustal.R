
library(msa)
library(Biostrings)
library(seqinr)
library(ape)
library(readr)
library(ggmsa)

#Import data
train <- read_csv("C:/Users/gregb/OneDrive/Asztali gép/UPC_master/BIOINF/Final Assignment/data/cleaned_data.csv")
train_seq <- AAStringSet(train$protein_sequence)
#Assign names to identify later
names(train_seq) <- paste0('sequence',1:length(train_seq))

#Example
train_seq[5:10]
write.fasta(as.list(train_seq[5:10]),names(train_seq[5:10]),file.out='clustal_test.fasta')

#Sample 50
set.seed(300)
sampling <- sample(train_seq,50,replace=F)
write.fasta(as.list(sampling),names(sampling),file.out='clustal50.fasta')

#Sample 100
set.seed(300)
sampling <- sample(train_seq,100,replace=F)
write.fasta(as.list(sampling),names(sampling),file.out='clustal100.fasta')

#Sample 300
set.seed(300)
sampling <- sample(train_seq,300,replace=F)
write.fasta(as.list(sampling),names(sampling),file.out='clustal300.fasta')

#Sample 500
set.seed(300)
sampling <- sample(train_seq,500,replace=F)
write.fasta(as.list(sampling),names(sampling),file.out='clustal500.fasta')

#Sample 1000
set.seed(300)
sampling <- sample(train_seq,1000,replace=F)
write.fasta(as.list(sampling),names(sampling),file.out='clustal1000.fasta')


0.46*25/qchisq(0.025,24)
