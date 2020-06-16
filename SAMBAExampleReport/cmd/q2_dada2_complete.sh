qiime dada2 denoise-paired --p-trim-left-f 0 --p-trim-left-r 0 --p-trunc-len-f 0 --p-trunc-len-r 0 --p-max-ee-f 2 --p-max-ee-r 2 --verbose --i-demultiplexed-seqs data_trimmed.qza --p-trunc-q 2 --p-chimera-method consensus --p-n-threads 14 --o-representative-sequences rep_seqs.qza --o-table table.qza --o-denoising-stats stats.qza
qiime metadata tabulate --verbose --m-input-file stats.qza --o-visualization stats.qzv
qiime feature-table summarize --verbose --i-table table.qza --o-visualization table.qzv --m-sample-metadata-file input_files_lot3_barcode_orig.txt
qiime feature-table tabulate-seqs --verbose --i-data rep_seqs.qza --o-visualization rep_seqs.qzv
qiime tools export --input-path rep_seqs.qzv --output-path dada2_output
qiime tools export --input-path table.qzv --output-path dada2_output
qiime tools export --input-path stats.qzv --output-path dada2_output
qiime tools export --input-path table.qza --output-path dada2_output
