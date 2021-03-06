// Generated by CoffeeScript 1.7.1

/*
  NodeCoffeeScriptLab
  Programmers: David Pagels and Dillon Stenberg
 */

(function() {
  var firstTwo, lastTwo, lessThree, notTenTwenty, onFive, rewrite, sliceArr, splatTest, spliceArrs, sumArr, sumUpTo, tryFive,
    __slice = [].slice;

  sumArr = function(anArr) {
    var num, sum, _i, _len;
    sum = 0;
    for (_i = 0, _len = anArr.length; _i < _len; _i++) {
      num = anArr[_i];
      sum += num;
    }
    return sum;
  };

  sumUpTo = function(anArr, lim) {
    var num, sum, _i, _len, _ref;
    sum = 0;
    _ref = anArr.slice(0, lim);
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      num = _ref[_i];
      sum += num;
    }
    return sum;
  };

  spliceArrs = function(arr1, arr2, index, size) {
    [].splice.apply(arr1, [index, (index + size) - index].concat(arr2)), arr2;
    return arr1;
  };

  sliceArr = function(anArr, lim1, lim2) {
    var combine, first, last;
    first = anArr.slice(0, lim1);
    last = anArr.slice(lim2);
    combine = first.concat(last);
    return combine;
  };

  firstTwo = function(anArr) {
    var first;
    first = anArr.slice(0, 2);
    return first;
  };

  lastTwo = function(anArr) {
    var last;
    last = anArr.slice(anArr.length - 2);
    return last;
  };

  lessThree = function(num) {
    var returnVal;
    returnVal = false;
    if (num < 3) {
      returnVal = true;
    }
    return returnVal;
  };

  notTenTwenty = function(num) {
    var returnVal;
    returnVal = false;
    if (num < 10 && num > 20) {
      returnVal = true;
    }
    return returnVal;
  };

  onFive = function(thing, num) {
    var retVal;
    retVal = false;
    if (thing === true && num < 5) {
      retVal = true;
    }
    return retVal;
  };

  tryFive = function(num) {
    if (num == null) {
      num = 5;
    }
    return num;
  };

  rewrite = function(num) {
    var write, _ref;
    write = 45;
    _ref = [num, write], write = _ref[0], num = _ref[1];
    return write;
  };

  splatTest = function() {
    var num;
    num = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
    return num;
  };

  module.exports.sumArr = sumArr;

  module.exports.sumUpTo = sumUpTo;

  module.exports.spliceArrs = spliceArrs;

  module.exports.sliceArr = sliceArr;

  module.exports.firstTwo = firstTwo;

  module.exports.lastTwo = lastTwo;

  module.exports.lessThree = lessThree;

  module.exports.notTenTwenty = notTenTwenty;

  module.exports.onFive = onFive;

  module.exports.tryFive = tryFive;

  module.exports.rewrite = rewrite;

  module.exports.splatTest = splatTest;

}).call(this);

//# sourceMappingURL=intro.map
