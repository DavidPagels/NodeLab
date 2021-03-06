// Generated by CoffeeScript 1.7.1

/*
  NodeCoffeeScriptLab
  Programmers: David Pagels and Dillon Stenberg
 */

(function() {
  var assert, calcGPA, gradeToFloat;

  assert = require('assert');

  calcGPA = require('./routes/gpa').calcGPA;

  gradeToFloat = require('./routes/gpa').gradeToFloat;

  describe("Testing GPA Calculator", function() {
    it("should return 3.0", function() {
      return assert.equal(calcGPA([0, 0, 0, 0, 3, 2, 0, 0]), 3.0);
    });
    it("should return 2.3", function() {
      return assert.equal(calcGPA([1, 3, 2, 2, 3, 4, 4, 1]), 2.3);
    });
    return it("should return 3.5", function() {
      return assert.equal(calcGPA([3, 2, 4, 2, 0, 0, 0, 0]), 3.5);
    });
  });

  describe("Testing Letter Grade to Float", function() {
    it("should return 3.3", function() {
      return assert.equal(gradeToFloat('B+'), 3.3);
    });
    it("should return 0", function() {
      return assert.equal(gradeToFloat('something'), 0);
    });
    return it("should return 2.7", function() {
      return assert.equal(gradeToFloat('B-'), 2.7);
    });
  });

}).call(this);

//# sourceMappingURL=gpaTesting.map
