###################################################
### code chunk number 1: sva.Rnw:5-6
###################################################
options(width=65)


###################################################
### code chunk number 3: input
###################################################
library(sva)
library(bladderbatch)
#data(bladderdata)
library(pamr)
library(limma)



input <- function(inputfile) {
   fitContrasts <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {

###################################################
### code chunk number 13: input
###################################################

	eb = eBayes(fitContrasts)
write.csv(topTableF(eb, adjust="BH"), outputfile)

}
