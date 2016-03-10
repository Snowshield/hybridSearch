module.exports = (arr, val)->
  len = arr.length ; i = 0
  while i < len
    elem = arr[i]
    if elem is val
      return i
    ++i
  return -1
