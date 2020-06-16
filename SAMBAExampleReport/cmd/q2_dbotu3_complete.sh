qiime dbotu-q2 call-otus --verbose --i-table table.qza --i-sequences rep_seqs.qza --p-gen-crit 0.1 --p-abund-crit 10 --p-pval-crit 0.0005 --o-representative-sequences dbotu3_seqs.qza --o-dbotu-table dbotu3_table.qza > dbotu3_details.txt
qiime feature-table summarize --verbose --i-table dbotu3_table.qza --o-visualization dbotu3_table.qzv --m-sample-metadata-file input_files_lot3_barcode_orig.txt
qiime feature-table tabulate-seqs --verbose --i-data dbotu3_seqs.qza --o-visualization dbotu3_seqs.qzv
qiime tools export --input-path dbotu3_seqs.qzv --output-path dbotu3_output
qiime tools export --input-path dbotu3_table.qzv --output-path dbotu3_output
qiime tools export --input-path dbotu3_table.qza --output-path dbotu3_output
cp dbotu3_details.txt dbotu3_output/
