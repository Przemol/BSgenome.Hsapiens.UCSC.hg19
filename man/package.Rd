\name{BSgenome.Hsapiens.UCSC.hg19}
\docType{package}

\alias{BSgenome.Hsapiens.UCSC.hg19-package}
\alias{BSgenome.Hsapiens.UCSC.hg19}
\alias{Hsapiens}

\title{Full genome sequences for Homo sapiens (UCSC version hg19)}

\description{
  Full genome sequences for Homo sapiens (Human) as provided by UCSC (hg19, Feb. 2009) and stored in Biostrings objects.
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
chromFa.zip, upstream1000.zip, upstream2000.zip, upstream5000.zip
from http://hgdownload.cse.ucsc.edu/goldenPath/hg19/bigZips/

  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{The Bioconductor Dev Team}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.Hsapiens.UCSC.hg19
genome <- BSgenome.Hsapiens.UCSC.hg19
seqlengths(genome)
genome$chr1  # same as genome[["chr1"]]

## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
