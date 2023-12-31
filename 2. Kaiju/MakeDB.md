# Here I explain how we made the Kaiju database, based on the description in Reynoso-García et al.

1. Get the full list of nr_euk taxa from [Kaiju](https://github.com/bioinformatics-centre/kaiju/blob/master/util/kaiju-taxonlistEuk.tsv). 

2. Add the taxIDs for the genera of interest (it wasn't specified in [the paper](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0292077#sec031) which taxon IDs from plant sequences from the NCBI nr database were also included, so we incuded the taxID for all Viridiplantae based on [NCBI taxonomy database](https://www.ncbi.nlm.nih.gov/taxonomy)).\
   *The resulting [.tsv file](https://github.com/AleksandraLaura/CoproliteAnalysesCommentaryALP/blob/main/2.%20Kaiju/kaiju-taxonlistEuk.tsv) can be found in this repository.*
    
4. Based on [this code from the Kaiju repository](https://github.com/bioinformatics-centre/kaiju/blob/master/util/kaiju-makedb), here are all the steps to make the database: 
   ```
   #First download the taxdump:
   #download , this is needed in all cases
   wget -N http://ftp.ncbi.nlm.nih.gov/pub/taxonomy/taxdump.tar.gz
   tar xf taxdump.tar.gz nodes.dmp names.dmp merged.dmp
   
   #Download the nr data from NCBI:
   #BIG FILE: GOOD IDEA TO RUN IN A SCREEN SESSION
   wget -c -P nr_euk https://ftp.ncbi.nih.gov/blast/db/FASTA/nr.gz
   wget -c -P nr_euk https://ftp.ncbi.nlm.nih.gov/pub/taxonomy/accession2taxid/prot.accession2taxid.gz

   #Download the needed files:
   wget https://raw.githubusercontent.com/bioinformatics-centre/kaiju/master/util/kaiju-excluded-accessions.txt > kaiju-excluded-accessions.txt
   wget https://raw.githubusercontent.com/AleksandraLaura/CoproliteAnalysesCommentaryALP/main/2.%20Kaiju/kaiju-taxonlistEuk.tsv > kaiju-taxonlistEuk.tsv

   #Convert to Kaiju database:
   gunzip -c nr_euk/nr.gz | kaiju-convertNR -m merged.dmp -t nodes.dmp -g nr_euk/prot.accession2taxid.gz -e kaiju-excluded-accessions.txt -a -o nr_euk/kaiju_db_nr_euk.faa -l kaiju-taxonlistEuk.tsv

   #The BWT
   kaiju-mkbwt -n 32 -a ACDEFGHIKLMNPQRSTVWY -o nr_euk/kaiju_db_nr_euk nr_euk/kaiju_db_nr_euk.faa
   # FM-index
   kaiju-mkfmi nr_euk/kaiju_db_nr_euk

   #For proper cleanup remember to delete everything but the names.dmp; nodes.dmp; and kaiju_db_nr_euk.fmi files
   ```
