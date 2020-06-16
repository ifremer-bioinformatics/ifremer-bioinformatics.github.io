qiime cutadapt trim-paired --p-front-f ACGGRAGGCAGCAG --p-front-r TACCAGGGTATCTAATCCT --verbose --p-cores 14 --i-demultiplexed-sequences data.qza --p-error-rate 0.1 --p-discard-untrimmed --p-match-read-wildcards --p-overlap 13 --o-trimmed-sequences data_trimmed.qza
qiime demux summarize --verbose --i-data data_trimmed.qza --o-visualization data_trimmed.qzv
qiime tools export --input-path data_trimmed.qzv --output-path trimmed_output
