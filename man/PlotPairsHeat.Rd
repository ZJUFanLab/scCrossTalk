% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotPairsHeat.R
\name{PlotPairsHeat}
\alias{PlotPairsHeat}
\title{Plot LR pairs between pairwise clusters}
\usage{
PlotPairsHeat(
  clu_pairs = NULL,
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
  symbol_size = 12
)
}
\arguments{
\item{clu_pairs}{A list generated from \code{\link{FindPairs}}}

\item{LR_pairs}{Which LR pairs to show. Default is 'all'. Or custom LR pairs, e.g., App_Tspan12, App_Notch2}

\item{show_clusters}{Which clusters related LR pairs to show. Default is 'all'}

\item{show_sig}{Whether to show significant highly expressed LR pairs between pairwise clusters. Default is FALSE
To show significant LR pairs, please run \code{\link{PairsSig}}}

\item{color_low}{Color of the lowest score. Default is 'white'}

\item{color_high}{Color of the highest score. Default is 'red'}

\item{border_color}{Color of cell borders on heatmap, use NA if no border should be drawn.Default is 'grey60'}

\item{cluster_rows}{Boolean values determining if rows should be clustered. Default is TRUE}

\item{cluster_cols}{Boolean values determining if columns should be clustered. Default is TRUE}

\item{symbol}{Significant symbol to plot. Default is '*'}

\item{symbol_col}{Color of symbol. Default is 'black'}

\item{symbol_size}{Size of symbol. Default is 12}
}
\value{
A heatmap of LR scores for each directed pairwise clusters
}
\description{
Plot LR pairs between pairwise clusters with a heatmap of LR scores for each directed pairwise clusters
}
\examples{
clu_pairs <- FindPairs(object = mouse_kidney_203_Seurat,species = 'Mouse')

# Plot all LR pairs related with cluster 1
plotpairsHeat (clu_pairs = clu_pairs,
               LR_pairs = 'all',
               show_clusters = '1')

# Plot App_Tspan12 pair related with all clusters
plotpairsHeat (clu_pairs = clu_pairs,
               LR_pairs = 'App_Tspan12',
               show_clusters = 'all')

# Plot App_Tspan12 and App_Notch2 pairs related with cluster 1 and 2
plotpairsHeat (clu_pairs = clu_pairs,
               LR_pairs = c('App_Tspan12','App_Notch2'),
               show_clusters = c('1','2'))
}
