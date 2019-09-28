\name{MinimalEnergyClustering}
\alias{MinimalEnergyClustering}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Minimal Energy Clustering 
}
\description{
Hierchical Clustering using the minimal energy approach of [Szekely/Rizzo, 2005].
}
\usage{
MinimalEnergyClustering(DataOrDistances, ClusterNo = 0,
DistanceMethod="euclidean", ColorTreshold = 0,Data, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{DataOrDistances}{[1:n,1:d] matrix of dataset to be clustered. It consists of n cases or d-dimensional data points. Every case has d attributes, variables or features. Alternatively, symmetric [1:n,1:n] distance matrix}

\item{ClusterNo}{A number k which defines k different Clusters to be build by the algorithm.}

\item{DistanceMethod}{see  \code{\link[parallelDist]{parDist}}, for example 'euclidean','mahalanobis','manhatten' (cityblock),'fJaccard','binary', 'canberra', 'maximum'. Any unambiguous substring can be given.}

\item{ColorTreshold}{draws cutline w.r.t. dendogram y-axis (height), height of line as scalar should be given}
\item{Data}{[1:n,1:d] data matrix in the case that \code{DataOrDistances} is missing and partial matching does not work.}
\item{...}{If ClusterNo=0, plot arugments for as.dendrogramm, e.g. leaflab
}
}
\details{
leaflab : a string specifying how leaves are labeled. The default "perpendicular" write text vertically (by default). "textlike" writes text horizontally (in a rectangle), and "none" suppresses leaf labels s. ?as.dendrogramm
}
\value{
List of
\item{Cls}{[1:n]  numerical vector with n numbers defining the classification as the main output of the clustering algorithm. It has k unique numbers representing the arbitrary labels of the clustering.}
\item{Dedrogram}{Dendrogram of hclust}
}
\references{
[Szekely/Rizzo, 2005]  Szekely, G. J. and Rizzo, M. L.: Hierarchical Clustering via Joint Between-Within Distances: Extending Ward’s Minimum Variance Method, Journal of Classification, 22(2) 151-183.http://dx.doi.org/10.1007/s00357-005-0012-9, 2005.
}
\author{
Michael Thrun
}

\seealso{
\code{\link{HierarchicalClustering}}
}
 \examples{
data('Hepta')
out=MinimalEnergyClustering(Hepta$Data,ClusterNo=7)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Hierarchical}% use one of  RShowDoc("KEYWORDS")
\keyword{Clustering}% __ONLY ONE__ keyword per line
\keyword{Agglomerative}% __ONLY ONE__ keyword per line