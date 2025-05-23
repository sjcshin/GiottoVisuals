% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vis_spatial_plotly.R
\name{dimFeatPlot3D}
\alias{dimFeatPlot3D}
\alias{dimGenePlot3D}
\title{dimFeatPlot3D}
\usage{
dimFeatPlot3D(
  gobject,
  feat_type = NULL,
  spat_unit = NULL,
  expression_values = c("normalized", "scaled", "custom"),
  genes = NULL,
  dim_reduction_to_use = "umap",
  dim_reduction_name = "umap",
  dim1_to_use = 1,
  dim2_to_use = 2,
  dim3_to_use = 3,
  show_NN_network = FALSE,
  nn_network_to_use = "sNN",
  network_name = "sNN.pca",
  network_color = "lightgray",
  cluster_column = NULL,
  select_cell_groups = NULL,
  select_cells = NULL,
  show_other_cells = TRUE,
  other_cell_color = "lightgrey",
  other_point_size = 1,
  edge_alpha = NULL,
  point_size = 2,
  genes_high_color = NULL,
  genes_mid_color = "white",
  genes_low_color = "blue",
  show_legend = TRUE,
  show_plot = NULL,
  return_plot = NULL,
  save_plot = NULL,
  save_param = list(),
  default_save_name = "dimFeatPlot3D"
)

dimGenePlot3D(...)
}
\arguments{
\item{gobject}{giotto object}

\item{feat_type}{feature type (e.g. "rna", "dna", "protein")}

\item{spat_unit}{spatial unit (e.g. "cell")}

\item{expression_values}{gene expression values to use}

\item{genes}{genes to show}

\item{dim_reduction_to_use}{dimension reduction to use}

\item{dim_reduction_name}{dimension reduction name}

\item{dim1_to_use}{dimension to use on x-axis}

\item{dim2_to_use}{dimension to use on y-axis}

\item{dim3_to_use}{dimension to use on z-axis}

\item{show_NN_network}{show underlying NN network}

\item{nn_network_to_use}{type of NN network to use (kNN vs sNN)}

\item{network_name}{name of NN network to use, if show_NN_network = TRUE}

\item{network_color}{color of NN network}

\item{cluster_column}{cluster column to select groups}

\item{select_cell_groups}{select subset of cells/clusters based on
cell_color parameter}

\item{select_cells}{select subset of cells based on cell IDs}

\item{show_other_cells}{display not selected cells}

\item{other_cell_color}{color of not selected cells}

\item{other_point_size}{size of not selected cells}

\item{edge_alpha}{column to use for alpha of the edges}

\item{point_size}{size of point (cell)}

\item{genes_high_color}{color for high expression levels}

\item{genes_mid_color}{color for medium expression levels}

\item{genes_low_color}{color for low expression levels}

\item{show_legend}{show legend}

\item{show_plot}{logical. show plot}

\item{return_plot}{logical. return ggplot object}

\item{save_plot}{logical. save the plot}

\item{save_param}{list of saving parameters,
see \code{\link{showSaveParameters}}}

\item{default_save_name}{default save name for saving, don't change,
change save_name in save_param}

\item{...}{additional params to pass}
}
\value{
plotly
}
\description{
Visualize cells and gene expression according to
dimension reduction coordinates
}
\details{
Description of parameters.
}
\section{Functions}{
\itemize{
\item \code{dimGenePlot3D()}: deprecated

}}
\examples{
g <- GiottoData::loadGiottoMini("starmap")

dimFeatPlot3D(g, genes = "Slc17a7", dim_reduction_name = "3D_umap")
}
\concept{dimension reduction gene expression visualizations}
