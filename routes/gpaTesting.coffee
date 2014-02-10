
assert = require 'assert'
calcGPA = require('./gpa').calcGPA

describe "Testing GPA Calculator", ->
  it "should return 3.0", ->
    assert.equal(calcGPA(0, 0, 3, 0, 0, 0, 2, 0), 3.0)

  it "should return 2.3", ->
    assert.equal(calcGPA(1, 2, 3, 4, 3, 2, 4, 1), 2.3)

  it "should return 3.5", ->
    assert.equal(calcGPA(3, 4, 0, 0, 3, 3, 0, 0), 3.5)