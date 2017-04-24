#
# Example of crappy coding style
#

time.slice = function (ff, nbin=96) {
  if (is(ff) != "flowFrame") {
    stop ("ff must be a single flowFrame")
  }

  nevents = nrow(ff)

  cuts = floor (seq (1, nevents, length=(nbin+1)))
  flist = list()
  bin.indices = list()
  for (i in 1:nbin)
  {
    start = cuts[i]
    end = cuts[i+1]
    flist[[i]] = new ("flowFrame", parameters=parameters(ff), description=description(ff))
    exprs(flist[[i]]) = exprs(ff)[start:end,]
    bin.indices[[i]] = start:end
  }
  names(flist) = paste ("slice_", 1:nbin, sep="")
  fs = flowSet (flist)

  return (list(fs=fs, bin.indices=bin.indices))
}
