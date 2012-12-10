pkgname <- "my1rpack"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('my1rpack')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("my1rpack-package")
### * my1rpack-package

flush(stderr()); flush(stdout())

### Name: my1rpack
### Title: Homework 2
### Aliases: my1rpack-package my1rpack
### Keywords: package

### ** Examples

require(my1rpack)

problem1('bmw1series', dnorm, c(-5, 5), 10, TRUE)
data(problem2)



cleanEx()
nameEx("problem1")
### * problem1

flush(stderr()); flush(stdout())

### Name: problem1
### Title: Function for homework 2 problem 1
### Aliases: problem1

### ** Examples

problem1('bmw1series', dnorm, c(-5, 5), 10, TRUE)



cleanEx()
nameEx("problem2")
### * problem2

flush(stderr()); flush(stdout())

### Name: problem2
### Title: Function for homework 2 problem 2
### Aliases: problem2
### Keywords: datasets

### ** Examples

data(problem2)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
