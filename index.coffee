findPrev      = require './findPrev'
interpSearch  = require './interpolationSearch'

module.exports = (arr, val)->
  if arr.length < 40
    findPrev(arr, val)
  else interpSearch(arr, val)
