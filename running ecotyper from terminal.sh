

#The script takes the following arguments:

#-d/–discovery: The name of the discovery dataset used for defining cell states. 
#By default, the only accepted values are Carcinoma and Lymphoma (case sensitive), which will recover the cell states that we already defined across carcinomas and in lymphoma, respectively. 
#If the user defined cell states in their own data (Tutorials 4-6), the name of the discovery dataset is the value provided in the Discovery dataset name field of the configuration file used for running cell state discovery. 
#In our tutorial, the name of the discovery dataset is Carcinoma.

#-m/–matrix: Path to the input expression matrix. The expression matrix should be in the TPM or FPKM space for bulk RNA-seq and non-logarithmic (exponential) space for microarrays. 
#It should have gene symbols on the first column and gene counts for each sample on the next columns. Column (sample) names should be unique. 
#Also, we recommend that the column names do not contain special characters that are modified by the R function make.names, 
#e.g. having digits at the beginning of the name or containing characters such as space, tab or -. 

#-a/–annotation: Path to a tab-delimited annotation file (not required). 
#If provided, this file should contain a column called ID with the same values as the columns of the expression matrix. 
#Additionally, this file can contain any number of columns, that can be used for plotting as color bars in the output heatmaps (see argument -c/–columns).
#-c/–columns: A comma-separated list of column names from the annotation file (see argument -a/–annotation) to be plotted as color bars in the output heatmaps. By default, the output heatmaps contain as color bar the cell state label each cell is assigned to. The column names indicated by this argument will be added to that color bar.

#-t/–threads: Number of threads. Default: 10.

#-o/–output: Output folder. The output folder will be created if it does not exist.

#The command line for recovering the carcinoma cell states and ecotypes on the tatlow and piccolo ov dataset where I filtered for protein coding transcripts and took median of transcript isoforms for each gene:
 Rscript /home/lythgo02/ecotyper/EcoTyper_source_code/ecotyper-master/EcoTyper_recovery_bulk.R -d Carcinoma -m /home/lythgo02/ecotyper/downloading_ecotyper_data/Tatlow_and_Piccolo_2016/tatlow_picollo_2016_for_ecotyper_2_median_all.tsv
  -c Tissue -o tatlow_piccolo_2016_for_ecotyper_3_median_all 

   Rscript /home/lythgo02/ecotyper/EcoTyper_source_code/ecotyper-master/EcoTyper_recovery_bulk.R -d Carcinoma -m /home/lythgo02/ecotyper/downloading_ecotyper_data/TCGA_stratification/hugo_tcga_all_samples_060722.tsv
  -c Tissue -o tcga_all_samples_060722 

  Rscript EcoTyper_recovery_bulk.R -d Carcinoma -m example_data/bulk_lung_data.txt -a example_data/bulk_lung_annotation.txt -c Tissue -o RecoveryOutput

  Rscript /home/lythgo02/ecotyper/EcoTyper_source_code/ecotyper-master/EcoTyper_recovery_bulk.R -d Carcinoma -m /home/lythgo02/ecotyper/EcoTyper_source_code/ecotyper-master/20230908_EcoTyperCountsMappedMedian.tsv
 -c Tissue  -o Test_20230908

