module.exports = (arr, val, from, len)->
  i = from
  while i < len
    elem = arr[i]
    if elem is val
      return i
    ++i
  return -1
