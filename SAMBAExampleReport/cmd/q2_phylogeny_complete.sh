qiime alignment mafft --i-sequences decontam_seqs.qza --o-alignment aligned_repseq.qza
qiime alignment mask --i-alignment aligned_repseq.qza --o-masked-alignment masked-aligned_repseq.qza
qiime phylogeny fasttree --i-alignment masked-aligned_repseq.qza --o-tree tree.qza >& tree.log 2>&1
qiime phylogeny midpoint-root --i-tree tree.qza --o-rooted-tree rooted_tree.qza
qiime tools export --input-path rooted_tree.qza --output-path tree_export_dir >& tree_export.log 2>&1
