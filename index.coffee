findPrev      = require './findPrev'
interpSearch  = require './interpolationSearch'

module.exports = (arr, val, from = 0)->
  len = arr.length
  if len < 40
    findPrev(arr, val, from, len)
  else interpSearch(arr, val, from, len)
