qiime feature-classifier classify-sklearn --p-n-jobs 14 --p-confidence 0.9 --i-classifier DATABASE_silva_v132_99_16S_V3-V4_PCR1F460-PCR1R460.qza --i-reads dbotu3_seqs.qza --o-classification taxonomy.qza
qiime metadata tabulate --m-input-file taxonomy.qza --o-visualization taxonomy.qzv
qiime tools export --input-path taxonomy.qzv --output-path taxo_output
mv taxo_output/metadata.tsv ASV_taxonomy.tsv
sed -i '1,2d' ASV_taxonomy.tsv
sed -i '1 i\#OTUID\ttaxonomy\tconfidence' ASV_taxonomy.tsv
biom add-metadata -i dbotu3_output/feature-table.biom --observation-metadata-fp ASV_taxonomy.tsv -o ASV_table_with_taxonomy.biom --sc-separated taxonomy
biom convert -i ASV_table_with_taxonomy.biom -o ASV_table_with_taxonomy.tsv --to-tsv --header-key taxonomy
