\name{ClusterabilityMDplot}
\alias{ClusterabilityMDplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Clusterability MDplot
}
\description{
Clusterability Mirrored-Density Plot. Clusterability aims to quantify the degree of cluster structures [Adolfsson et al., 2019].
A dataset has a high probabilty to posses cluster structures, if the first component of the PCA projection is multimodal [Adolfsson et al., 2019]. As the dip test ist less exact than the MDplot [Thrun et al., 2019] , pvalues above 0.05 can be given for MDplots which are clearly multimodal. 

An alternative investigation of clusterability can be performed by inspecting the topographic map of the Generalized U-Matrix for a specfic projection method using the \pkg{ProjectionBasesdClustering} and \pkg{GeneralizedUmatrix} packages on CRAN, see [Thrun/Ultsch, 2020] for details.
}
\usage{
ClusterabilityMDplot(DataOrDistance,Method,na.rm=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DataOrDistance}{
  einer one datasets [1:n,1:d] of n cases and d features or  or symmetric distance matrix [1:d,1:d] 
  
  or multiple data sets or distances in a list
}
  \item{Method}{
  "none" performs no dimension reduction.
  
  "pca" uses the scores from the first principal component.
  
  "distance" computes pairwise distances (using distance_metric as the metric).
}
  \item{na.rm}{statistical testing will not work with mssing values, if TRUE values are imputed with aveages}
}
\details{
Uses the method of [Adolfsson et al., 2019] sepecified as pca plus dip-test (PCA dip) per default.

If list is named, than the names of the list will be used and the MDplots will be re-ordered according to multimodality in the plot, otherwise only the pvalues of [Adolfsson et al., 2019] will be the names and the ordering of the MDplots is the same as the of the list.


Beware, as shown below, this test fails for alomost touching clusters of Tetra and is difficult to intepret on WingNut but with overlayed with a roubustly estimated unimodal Gaussian distribution it can be interpreted as multimodal). However,  it does not fail for chaining data contrary to the claim in [Adolfsson et al., 2019].
}
\value{
ggplot2 plotter handle
}
\references{
[Adolfsson et al., 2019]  Adolfsson, A., Ackerman, M., & Brownstein, N. C.: To cluster, or not to cluster: An analysis of clusterability methods, Pattern Recognition, Vol. 88, pp. 13-26. 2019.

[Thrun et al., 2019]  Thrun, M. C., Gehlert, T., & Ultsch, A.: Analyzing the Fine Structure of Distributions, preprint available at arXiv.org, Vol. under review, pp. arXiv:1908.06081. doi arXiv:1908.06081, 2019.

[Thrun/Ultsch, 2020]  Thrun, M. C., and Ultsch, A.: Swarm Intelligence for Self-Organized Clustering, Artificial Intelligence, in press, \url{https://doi.org/10.1016/j.artint.2020.103237}, 2020.

}
\author{
Michael Thrun
}
\note{
Based on work currently under review, the author of this function disagrees with [Adolfsson et al., 2019] as to the preference which clusterablity method should be used and approach "distance" is not preferable for density-based cluster structures.
}

\examples{
##one dataset
data(Hepta)
\donttest{
ClusterabilityMDplot(Hepta$Data)
}
##multiple datasets
data(Atom)
data(Chainlink)
data(Lsun3D)
data(GolfBall)
data(EngyTime)
data(Target)
data(Tetra)
data(WingNut)
data(TwoDiamonds)

DataV = list(
  Atom = Atom$Data,
  Chainlink = Chainlink$Data,
  Hepta = Hepta$Data,
  Lsun3D = Lsun3D$Data,
  GolfBall = GolfBall$Data,
  EngyTime = EngyTime$Data,
  Target = Target$Data,
  Tetra = Tetra$Data,
  WingNut = WingNut$Data,
  TwoDiamonds = TwoDiamonds$Data
)

\donttest{ClusterabilityMDplot(DataV)}

\dontshow{
ClusterabilityMDplot(DataV[3:4])
}
}

\seealso{
\code{\link[DataVisualizations]{MDplot}}
}

\note{Imputation does not work for distance matrices. Imputation is still experimental. It is adviced to impute missing values before using this function}
\keyword{Clusterability}% use one of  RShowDoc("KEYWORDS")
\keyword{MDplot}% __ONLY ONE__ keyword per line