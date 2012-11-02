\name{problem1}

\alias{problem1}

\title{
Function of homework 2 problem 1
}

\description{

The purpose of the function is to generate line plot of specific distribution over the interval (nrange) by randomly sampling sample times. The plot is in tex trkz format. If the argument "compile" is "TRUE", a PDF file of plot would be generate by coming the tex file.
}

\usage{problem1(filename = 'nameOfOutput', fcnname = aFunction, nRange =
c(xLowerBound, xUpperBound), nsample = N, TRUE)}

\arguments{
  \item{filename}{The file name of the plot}
  \item{fcnname}{A reference to a function.}
  \item{nrange}{The interval of x value.}
  \item{nsample}{Number of sample points in the plot.}
  \item{compile}{Indicating whether to generate the PDF file.}
}

\value{
  Used for its side-effects.
}

\author{
Rong Fan <rfan4@jhu.edu>
}
\note{
}
\examples{
problem1('bmw1series', dnorm, c(-5, 5), 100, TRUE)
}