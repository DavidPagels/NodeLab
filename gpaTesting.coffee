###
  NodeCoffeeScriptLab
  Programmers: David Pagels and Dillon Stenberg
###
assert = require 'assert'
calcGPA = require('./routes/gpa').calcGPA
gradeToFloat = require('./routes/gpa').gradeToFloat


describe "Testing GPA Calculator", ->
  it "should return 3.0", ->
    assert.equal(calcGPA(0, 0, 3, 0, 0, 0, 2, 0), 3.0)

  it "should return 2.3", ->
    assert.equal(calcGPA(1, 2, 3, 4, 3, 2, 4, 1), 2.3)

  it "should return 3.5", ->
    assert.equal(calcGPA(3, 4, 0, 0, 3, 3, 0, 0), 3.5)


describe "Testing Letter Grade to Float", ->
  it "should return 3.3", ->
    assert.equal(gradeToFloat('B+'), 3.3)

  it "should return 0", ->
    assert.equal(gradeToFloat('something'), 0)

  it "should return 2.7", ->
    assert.equal(gradeToFloat('B-'), 2.7)
