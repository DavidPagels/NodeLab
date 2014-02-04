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
