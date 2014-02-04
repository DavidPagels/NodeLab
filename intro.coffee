assert = require 'assert'

describe "testing for loop", ->

  arr = [1, 2, 3, 4, 5, 6, 19]
  arr2 = [1, 1, 1]
  it "should sum to 40", ->
    assert.equal(sumArr(arr), 40)
  it "should sum to 3", ->
    assert.equal(sumArr(arr2), 3)

describe "testing other for loop function with slicing", ->
  arr = [1, 2, 1, 9, 12, 452, 1, 3, 1000000000]
  it "should return 17", ->
    assert.equal(sumUpTo(arr, 4), 13)

describe "array splicing", ->
  arr1=[1,2,3,4,5,6]
  arr2=[15,16]
  it "should return [1, 2, 15, 16, 5, 6]", ->
    assert.deepEqual(spliceArrs(arr1, arr2, 2, 2), [1, 2, 15, 16, 5, 6])
  it "should return [1, 2, 15, 16, 15, 16]", ->
    assert.deepEqual(spliceArrs(spliceArrs(arr1, arr2, 2, 2), arr2, 4, 2), [1, 2, 15, 16, 15, 16])

describe "another array slicing", ->
  arr = [2, 3, 4, 5, 8, 9]
  it "should return [2, 3, 8, 9]", ->
    assert.deepEqual(sliceArr(arr, 2, 4), [2, 3, 8, 9])

describe "first two and last two test", ->
  arr = [1, 2, 3, 4, 5, 6, 7, 8]
  it "should return [1, 2]", ->
    assert.deepEqual(firstTwo(arr), [1, 2])
  it "should return [7, 8]", ->
    assert.deepEqual(lastTwo(arr), [7, 8])

describe "is less than three", ->
  it "less than three", ->
    assert.equal(lessThree(2), true)

describe "not between 10 and 20", ->
  it "between 10 and 20", ->
    assert.equal(notTenTwenty(15), false)

describe "on and less than 5", ->
  it "should evaluate to true", ->
    assert.equal(onFive(true, 2), true)

describe "tryFive", ->
  it "should give us 5", ->
    assert.equal(tryFive(), 5)
  it "should give us 3", ->
    assert.equal(tryFive(3), 3)
  it "should return -2", ->
    assert.equal(tryFive(-2), -2)

describe "rewriting test", ->
  it "should give us 2", ->
    assert.equal(rewrite(2), 2)
  it "should give us 4", ->
    assert.equal(rewrite(4), 4)
  it "should give us 8", ->
    assert.equal(rewrite(8), 8)

describe "testing splats", ->
  it "should return the variables", ->
    assert.deepEqual(splatTest(1, 2, 3, 6), [1, 2, 3, 6])
  it "should do the same", ->
    assert.deepEqual(splatTest(1, 2, 3, 4, 5, 6), [1, 2, 3, 4, 5, 6])
  it "should do the same again", ->
    assert.deepEqual(splatTest(1), [1])


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