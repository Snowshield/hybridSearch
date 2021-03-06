module.exports = (sorted, toFind, from, len)->
  mid  = null
  low  = from
  high = len - 1
  getHigh = -> sorted[high]
  getLow  = -> sorted[low]
  getMid  = -> sorted[mid]

  gotHigh = getHigh()
  gotLow  = getLow()
  while (gotLow < toFind and gotHigh > toFind)
    mult = (high - low) / (gotHigh - gotLow)
    mid = Math.floor low + mult * (toFind - gotLow)
    gotMid = getMid()

    if gotMid < toFind
      low = mid + 1
    else if gotMid > toFind
      high = mid - 1
    else
      return mid

    gotHigh = getHigh()
    gotLow  = getLow()

  if getLow() is toFind       then low
  else if getHigh() is toFind then high
  else -1 # Not found
