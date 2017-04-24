#
# Example of a cleaned-up version of the time-slicing program
#
# 2017-04-24 WTR

SliceTime = function(ff, nbin = 96) {
  if (is(ff) != "flowFrame") {
    stop("ff must be a single flowFrame")
  }

  n_events = nrow(ff)

  cuts = floor(seq(1, n_events, length = (nbin + 1)))
  flist = list()
  bin_indices = list()
  for (i in 1:nbin) {
    start = cuts[i]
    end = cuts[i + 1]
    flist[[i]] = new("flowFrame",
                     parameters = parameters(ff),
                     description = description(ff))

    exprs(flist[[i]]) = exprs(ff)[start:end,]
    bin_indices[[i]] = start:end
  }
  names(flist) = paste("slice_", 1:nbin, sep = "")
  fs = flowSet(flist)

  return(list(fs = fs, bin_indices = bin_indices))
}
