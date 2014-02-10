###
  NodeCoffeeScriptLab
  Programmers: David Pagels and Dillon Stenberg
###

sumArr = (anArr) ->
  sum = 0
  sum += num for num in anArr
  sum

sumUpTo = (anArr, lim) ->
  sum = 0
  sum += num for num in anArr[0...lim]
  sum

spliceArrs = (arr1, arr2, index, size) ->
  arr1[index...(index + size)] = arr2
  arr1

sliceArr = (anArr, lim1, lim2) ->
  first = anArr[...lim1]
  last = anArr[lim2...]
  combine = first.concat last
  combine

firstTwo = (anArr) ->
  first = anArr[...2]
  first

lastTwo = (anArr) ->
  last = anArr[anArr.length - 2...]
  last

lessThree = (num) ->
  returnVal = false
  if num < 3 then returnVal = true
  returnVal

notTenTwenty = (num) ->
  returnVal = false
  if num < 10 and num > 20
    returnVal = true
  returnVal

onFive = (thing, num) ->
  retVal = false
  if thing is on and num < 5
    retVal = yes
  retVal

tryFive = (num) ->
  num ?=5
  num

rewrite = (num) ->
  write = 45
  [write,num] = [num,write]
  write

splatTest = (num...) ->
  num

module.exports.sumArr = sumArr
module.exports.sumUpTo = sumUpTo
module.exports.spliceArrs = spliceArrs
module.exports.sliceArr = sliceArr
module.exports.firstTwo = firstTwo
module.exports.lastTwo = lastTwo
module.exports.lessThree = lessThree
module.exports.notTenTwenty = notTenTwenty
module.exports.onFive = onFive
module.exports.tryFive = tryFive
module.exports.rewrite = rewrite
module.exports.splatTest = splatTest