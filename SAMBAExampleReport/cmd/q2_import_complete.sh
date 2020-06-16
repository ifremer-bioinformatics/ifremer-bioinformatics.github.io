qiime tools import --input-path input_files_lot3_FR_orig.txt --output-path data.qza --type 'SampleData[PairedEndSequencesWithQuality]' --input-format PairedEndFastqManifestPhred33V2
qiime demux summarize --verbose --i-data data.qza --o-visualization data.qzv
qiime tools export --input-path data.qzv --output-path import_output
