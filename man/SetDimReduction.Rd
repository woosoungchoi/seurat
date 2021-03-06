% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dimensional_reduction_utilities.R
\name{SetDimReduction}
\alias{SetDimReduction}
\title{Dimensional Reduction Mutator Function}
\usage{
SetDimReduction(object, reduction.type, slot, new.data)
}
\arguments{
\item{object}{Seurat object}

\item{reduction.type}{Type of dimensional reduction to set}

\item{slot}{Specific information to set (must be one of the following:
"cell.embeddings", "gene.loadings", "gene.loadings.full", "sdev", "key",
"misc")}

\item{new.data}{New data to set}
}
\value{
Seurat object with updated slot
}
\description{
Set information for specified stored dimensional reduction analysis
}
\examples{
pbmc_small
# Simulate adding a new dimensional reduction
new.cell.embeddings <- GetCellEmbeddings(object = pbmc_small, reduction.type = "pca")
new.gene.loadings <- GetGeneLoadings(object = pbmc_small, reduction.type = "pca")
SetDimReduction(
  object = pbmc_small,
  reduction.type = "new.pca",
  slot = "cell.embeddings",
  new.data = new.cell.embeddings
)
SetDimReduction(
  object = pbmc_small,
  reduction.type = "new.pca",
  slot = "gene.loadings",
  new.data = new.gene.loadings
)

}
