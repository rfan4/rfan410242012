install.packages("filehash")
problem1 <- function(filename = NULL, fcnname = NULL, nrange = NULL, nsample = NULL, compile = NULL) {
  
  require(tikzDevice) 
  ffilename = paste(filename, ".tex", sep = "") 
  xbeg = nrange[1]
  xend = nrange[2]
  xval = seq(xbeg, xend, length = nsample)
  yval = fcnname(xval)
  tikz(ffilename, standAlone = TRUE)
  fcnnamelab = paste("$", deparse(substitute(fcnname)), "$", sep = "")
  
  plot(xval, yval, type = 'l', xlab = "$x$", ylab = fcnnamelab)
  
  dev.off()
  
  
  if (compile) {
    tools::texi2pdf(ffilename)
  }
}