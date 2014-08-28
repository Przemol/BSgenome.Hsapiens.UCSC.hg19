###
###

.pkgname <- "BSgenome.Hsapiens.UCSC.hg19"

.seqnames <- paste("chr", c(1:22, "X", "Y", "M", "1_gl000191_random", "1_gl000192_random", "4_ctg9_hap1", "4_gl000193_random", "4_gl000194_random", "6_apd_hap1", "6_cox_hap2", "6_dbb_hap3", "6_mann_hap4", "6_mcf_hap5", "6_qbl_hap6", "6_ssto_hap7", "7_gl000195_random" , "8_gl000196_random", "8_gl000197_random", "9_gl000198_random", "9_gl000199_random", "9_gl000200_random", "9_gl000201_random", "11_gl000202_random", "17_ctg5_hap1", "17_gl000203_random", "17_gl000204_random", "17_gl000205_random", "17_gl000206_random", "18_gl000207_random", "19_gl000208_random", "19_gl000209_random", "21_gl000210_random", paste("Un_gl000", 211:249, sep="")), sep="")

.circ_seqs <- "chrM"

.mseqnames <- paste("upstream", c("1000", "2000", "5000"), sep="")

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Homo sapiens",
        species="Human",
        provider="UCSC",
        provider_version="hg19",
        release_date="Feb. 2009",
        release_name="Genome Reference Consortium GRCh37",
        source_url="http://hgdownload.cse.ucsc.edu/goldenPath/hg19/bigZips/",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Hsapiens"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

