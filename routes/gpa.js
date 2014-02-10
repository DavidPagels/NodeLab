// Generated by CoffeeScript 1.7.1

/*
  NodeCoffeeScriptLab
  Programmers: David Pagels and Dillon Stenberg
 */

(function() {
  var bodyString, calcGPA, footerString, gradeToFloat, headerString;

  headerString = '<!DOCTYPE html>\n <html>\n <head>\n <title>GPA Calculator</title>\n </head>\n <body>\n <h1>Enter your grades and number of credits</h1><br/>\n\n';

  bodyString = '<form method="post" action="/gpa">\n <label>Grade:\n <select name="firstG" id="firstG">\n <option value="0" selected="selected">none</option>\n <option value="A">A</option>\n <option value="A-">A-</option>\n <option value="B+">B+</option>\n <option value="B">B</option>\n <option value="B-">B-</option>\n <option value="C+">C+</option>\n <option value="C">C</option>\n <option value="C-">C-</option>\n <option value="D+">D+</option>\n <option value="D">D</option>\n <option value="F">F</option>\n </select></label>\n <label>Credits:\n <select name="first" id="first">\n <option value="0" selected="selected">none</option>\n <option>1</option>\n <option>2</option>\n <option>3</option>\n <option>4</option>\n <option>5</option>\n </select>\n </label>\n <br/>\n\n <label>Grade:\n <select name="secondG" id="secondG">\n <option value="0" selected="selected">none</option>\n <option value="A">A</option>\n <option value="A-">A-</option>\n <option value="B+">B+</option>\n <option value="B">B</option>\n <option value="B-">B-</option>\n <option value="C+">C+</option>\n <option value="C">C</option>\n <option value="C-">C-</option>\n <option value="D+">D+</option>\n <option value="D">D</option>\n <option value="F">F</option>\n </select></label>\n <label>Credits:\n <select name="second" id="second">\n <option value="0" selected="selected">none</option>\n <option>1</option>\n <option>2</option>\n <option>3</option>\n <option>4</option>\n <option>5</option>\n </select>\n </label>\n <br/>\n\n <label>Grade:\n <select name="thirdG" id="thirdG">\n <option value="0" selected="selected">none</option>\n <option value="A">A</option>\n <option value="A-">A-</option>\n <option value="B+">B+</option>\n <option value="B">B</option>\n <option value="B-">B-</option>\n <option value="C+">C+</option>\n <option value="C">C</option>\n <option value="C-">C-</option>\n <option value="D+">D+</option>\n <option value="D">D</option>\n <option value="F">F</option>\n </select></label>\n <label>Credits:\n <select name="third" id="third">\n <option value="0" selected="selected">none</option>\n <option>1</option>\n <option>2</option>\n <option>3</option>\n <option>4</option>\n <option>5</option>\n </select>\n </label>\n <br/>\n\n <label>Grade:\n <select name="fourthG" id="fourthG">\n <option value="0" selected="selected">none</option>\n <option value="A">A</option>\n <option value="A-">A-</option>\n <option value="B+">B+</option>\n <option value="B">B</option>\n <option value="B-">B-</option>\n <option value="C+">C+</option>\n <option value="C">C</option>\n <option value="C-">C-</option>\n <option value="D+">D+</option>\n <option value="D">D</option>\n <option value="F">F</option>\n </select></label>\n <label>Credits:\n <select name="fourth" id="fourth">\n <option value="0" selected="selected">none</option>\n <option>1</option>\n <option>2</option>\n <option>3</option>\n <option>4</option>\n <option>5</option>\n </select>\n </label>\n <br/><br/>\n <input type="submit" id="gpaCalc" value="Calculate GPA"/>\n <br/><br/></form>\n\n';

  footerString = '</body>\n </html>\n';

  calcGPA = function(GPArray) {
    var theGPA;
    theGPA = (GPArray[0] * GPArray[1] + GPArray[2] * GPArray[3] + GPArray[4] * GPArray[5] + GPArray[6] * GPArray[7]) / (GPArray[1] + GPArray[3] + GPArray[5] + GPArray[7]);
    return theGPA;
  };

  gradeToFloat = function(grade) {
    var retFlo;
    return retFlo = (function() {
      switch (false) {
        case grade !== 'A':
          return 4.0;
        case grade !== 'A-':
          return 3.7;
        case grade !== 'B+':
          return 3.3;
        case grade !== 'B':
          return 3.0;
        case grade !== 'B-':
          return 2.7;
        case grade !== 'C+':
          return 2.3;
        case grade !== 'C':
          return 2.0;
        case grade !== 'C-':
          return 1.7;
        case grade !== 'D+':
          return 1.3;
        case grade !== 'D':
          return 1.0;
        case grade !== 'F':
          return 0.0;
        default:
          return 0;
      }
    })();
  };

  exports.formResponse = function(req, res) {
    return res.render('gpa');
  };

  exports.postResponse = function(req, res) {
    var GPArray, credit1, credit2, credit3, credit4, grade1, grade2, grade3, grade4;
    grade1 = gradeToFloat(req.body.firstG);
    grade2 = gradeToFloat(req.body.secondG);
    grade3 = gradeToFloat(req.body.thirdG);
    grade4 = gradeToFloat(req.body.fourthG);
    credit1 = parseFloat(req.body.first);
    credit2 = parseFloat(req.body.second);
    credit3 = parseFloat(req.body.third);
    credit4 = parseFloat(req.body.fourth);
    GPArray = [grade1, credit1, grade2, credit2, grade3, credit3, grade4, credit4];
    return res.send(headerString + bodyString + '<p>Your GPA is: ' + calcGPA(GPArray) + '</p>' + footerString);
  };

  module.exports.calcGPA = calcGPA;

  module.exports.gradeToFloat = gradeToFloat;

}).call(this);

//# sourceMappingURL=gpa.map
