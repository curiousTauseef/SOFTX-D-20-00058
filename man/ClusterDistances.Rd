\name{ClusterDistances}
\alias{ClusterDistances}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
ClusterDistances
}
\description{
Computes intra-cluster distances which are the distance in-between each cluster.
}
\usage{
ClusterDistances(FullDistanceMatrix, Cls,

Names, PlotIt = FALSE)
}
\arguments{
  \item{FullDistanceMatrix}{
  [1:n,1:n] symmetric distance matrix
}
  \item{Cls}{
  [1:n] numerical vector of k classes
}
  \item{Names}{
  Optional [1:k] character vector naming k classes
}
  \item{PlotIt}{
  Optional, Plots if TRUE
}
}
\details{
Cluster distances are given back as a matrix, one column per cluster and the vector of the full distance matrix without the diagonal elements and the upper half of the symmetric matrix.
}
\value{
matrix [1:m,1:(k+1)] of k clusters, each columns consists of the distances in a cluster, filled up with NaN at the end to be of the same lenght as the complete distance matrix.
}
\references{
[Thrun, 2018] Thrun, M.C., Projection Based Clustering through Self-Organization and Swarm Intelligence. 2018, Heidelberg: Springer.
}
\author{
Michael Thrun
}
\note{

PlotIt is under development
}

\seealso{
\code{\link[DataVisualizations]{MDplot}}
}
\examples{
##ToDo
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{intra-cluster}% use one of  RShowDoc("KEYWORDS")
\keyword{distances}% __ONLY ONE__ keyword per line