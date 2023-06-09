# scCrossTalk
Please see the revised version in [here](https://github.com/multitalk/scCrossTalk)

# Install
```
# download the source package of scCrossTalk-1.0.tar.gz and install it
# ensure the right directory for scCrossTalk-1.0.tar.gz
install.packages(pkgs = 'scCrossTalk-1.0.tar.gz',repos = NULL, type = "source")
```
or
```
# install devtools and install scCrossTalk
install.packages(pkgs = 'devtools')
devtools::install_github('ZJUFanLab/scCrossTalk')
```

# Usage
`library(scCrossTalk)`
### Find highly expressed ligand-receptor pairs between pairwise clusters
Find highly expressed ligands and receptors between pairwise clusters using Z score for a `Seurat` object (>= 3.0.0) after log1p normalization, cluster analysis and tSNE or Umap dimensionality reduction
```
clu_pairs <- FindPairs(object = mouse_kidney_203_Seurat,
                       species = "Mouse",
                       use_LRdb = "LRdb",
                       revise_gene = T,
                       cell_min_pct = 0.25,
                       p_value = 0.05)
```


### Find significant LR pairs between pairwise clusters
```
PairsSig(clu_pairs = clu_pairs, per_num = 1000, pvalue = 0.05)
```

### Find significant crosstalk between pairwise clusters
```
CrossTalkSig(clu_pairs = clu_pairs, per_num = 1000, pvalue = 0.05)
```

### Plot LR pairs between pairwise clusters
```
PlotPairsNode(clu_pairs = clu_pairs,
              show_sig = F,
              edge_width = 1,
              edge_alpha = 0.5,
              node_size_min = 1,
              node_size_max = 10,
              text_size = 3)
```
<img src='https://github.com/ZJUFanLab/scCrossTalk/blob/main/img/PlotPairsNode.svg' width = "600" height = "600">

```
PlotPairsNet(clu_pairs = clu_pairs,
             show_sig = F,
             show_clu_node = T,
             layout = "nicely",
             show_text_cutoff = 0,
             node_size_min = 5,
             node_size_max = 10,
             text_size = 3,
             text_col = "black",
             edge_width = 0.5,
             edge_col = "black",
             edge_alpha = 0.2)
```
<img src='https://github.com/ZJUFanLab/scCrossTalk/blob/main/img/PlotPairsNet.svg' width = "600">

```
PlotPairsHeat(clu_pairs = clu_pairs,
              LR_pairs = "all",
              show_clusters = "all",
              show_sig = F,
              color_low = "white",
              color_high = "red",
              border_color = "grey60",
              cluster_rows = T,
              cluster_cols = T,
              symbol = "*",
              symbol_col = "black",
              symbol_size = 12)
```
<img src='https://github.com/ZJUFanLab/scCrossTalk/blob/main/img/PlotPairsHeat.svg' width = "400">

```
PlotPairsBubble(clu_pairs = clu_pairs,
                LR_pairs = "all",
                show_clusters = "all",
                if_directed = T, 
                show_sig = F,
                bubble_col = "black",
                bubble_alpha = 0.6,
                bubble_max_size = 20,
                show_text_cutoff = 1)
```
<img src='https://github.com/ZJUFanLab/scCrossTalk/blob/main/img/PlotPairsBubble.svg' width = "600">

```
PlotPairsCircle(clu_pairs = clu_pairs,
                show_sig = F,
                ligand_clu = "1",
                receptor_clu = "2")
```
<img src='https://github.com/ZJUFanLab/scCrossTalk/blob/main/img/PlotPairsCircle.svg' width = "600">

```
PlotPairsDim(clu_pairs = clu_pairs,
             ligand = "Apoe",
             ligand_clu = "4",
             receptor = "Sdc4",
             receptor_clu = "2",
             reduction = "umap",
             size = 1,
             text_size = 12)
```
<img src='https://github.com/ZJUFanLab/scCrossTalk/blob/main/img/PlotPairsDim.svg' width = "800">

```
PlotPairsViolin(clu_pairs = clu_pairs,
                ligand = "Apoe",
                ligand_clu = "4",
                receptor = "Sdc4",
                receptor_clu = "2",
                reduction = "umap",
                show_jitter = T,
                jitter_size = 2)
```
<img src='https://github.com/ZJUFanLab/scCrossTalk/blob/main/img/PlotPairsViolin.svg' width = "400">

### Plot crosstalk between pairwise clusters
```
PlotCrossTalkSan(clu_pairs = clu_pairs, show_type = "number", show_sig = F)
```

<img src='https://github.com/ZJUFanLab/scCrossTalk/blob/main/img/PlotCrossTalkSan.svg' width = "600">

```
PlotCrossTalkCircle(clu_pairs = clu_pairs, show_type = "score", show_sig = F)
```

<img src='https://github.com/ZJUFanLab/scCrossTalk/blob/main/img/PlotCrossTalkCircle.svg' width = "600">

```
PlotCrossTalkHeat(clu_pairs = clu_pairs,
                  show_type = "number",
                  if_directed = T,
                  show_sig = F,
                  color_low = "white",
                  color_high = "red",
                  border_color = "grey60",
                  cluster_rows = T,
                  cluster_cols = T,
                  symbol = "*",
                  symbol_col = "black",
                  symbol_size = 12)
```
<img src='https://github.com/ZJUFanLab/scCrossTalk/blob/main/img/PlotCrossTalkHeat.svg' width = "600">

```
PlotCrossTalkNet(clu_pairs = NULL,
                 show_type = NULL,
                 layout = "nicely",
                 show_sig = F,
                 edge_col = "black",
                 edge_alpha = 0.1,
                 node_size_min = 5,
                 node_size_max = 10,
                 text_size = 3,
                 text_col = "black")
```
<img src='https://github.com/ZJUFanLab/scCrossTalk/blob/main/img/PlotCrossTalkNet.svg' width = "600">









