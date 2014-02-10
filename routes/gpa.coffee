###
  NodeCoffeeScriptLab
  Programmers: David Pagels and Dillon Stenberg
###


headerString='<!DOCTYPE html>\n
<html>\n
<head>\n
    <title>GPA Calculator</title>\n
</head>\n
<body>\n
<h1>Enter your grades and number of credits</h1><br/>\n\n'

bodyString='<form method="post" action="/gpa">\n
    <label>Grade:\n
        <select name="firstG" id="firstG">\n
            <option value="0" selected="selected">none</option>\n
            <option value="A">A</option>\n
            <option value="A-">A-</option>\n
            <option value="B+">B+</option>\n
            <option value="B">B</option>\n
            <option value="B-">B-</option>\n
            <option value="C+">C+</option>\n
            <option value="C">C</option>\n
            <option value="C-">C-</option>\n
            <option value="D+">D+</option>\n
            <option value="D">D</option>\n
            <option value="F">F</option>\n
        </select></label>\n
    <label>Credits:\n
        <select name="first" id="first">\n
            <option value="0" selected="selected">none</option>\n
            <option>1</option>\n
            <option>2</option>\n
            <option>3</option>\n
            <option>4</option>\n
            <option>5</option>\n
        </select>\n
    </label>\n
    <br/>\n\n

    <label>Grade:\n
        <select name="secondG" id="secondG">\n
            <option value="0" selected="selected">none</option>\n
            <option value="A">A</option>\n
            <option value="A-">A-</option>\n
            <option value="B+">B+</option>\n
            <option value="B">B</option>\n
            <option value="B-">B-</option>\n
            <option value="C+">C+</option>\n
            <option value="C">C</option>\n
            <option value="C-">C-</option>\n
            <option value="D+">D+</option>\n
            <option value="D">D</option>\n
            <option value="F">F</option>\n
        </select></label>\n
    <label>Credits:\n
        <select name="second" id="second">\n
            <option value="0" selected="selected">none</option>\n
            <option>1</option>\n
            <option>2</option>\n
            <option>3</option>\n
            <option>4</option>\n
            <option>5</option>\n
        </select>\n
    </label>\n
    <br/>\n\n

    <label>Grade:\n
        <select name="thirdG" id="thirdG">\n
            <option value="0" selected="selected">none</option>\n
            <option value="A">A</option>\n
            <option value="A-">A-</option>\n
            <option value="B+">B+</option>\n
            <option value="B">B</option>\n
            <option value="B-">B-</option>\n
            <option value="C+">C+</option>\n
            <option value="C">C</option>\n
            <option value="C-">C-</option>\n
            <option value="D+">D+</option>\n
            <option value="D">D</option>\n
            <option value="F">F</option>\n
        </select></label>\n
    <label>Credits:\n
        <select name="third" id="third">\n
            <option value="0" selected="selected">none</option>\n
            <option>1</option>\n
            <option>2</option>\n
            <option>3</option>\n
            <option>4</option>\n
            <option>5</option>\n
        </select>\n
    </label>\n
    <br/>\n\n

    <label>Grade:\n
        <select name="fourthG" id="fourthG">\n
            <option value="0" selected="selected">none</option>\n
            <option value="A">A</option>\n
            <option value="A-">A-</option>\n
            <option value="B+">B+</option>\n
            <option value="B">B</option>\n
            <option value="B-">B-</option>\n
            <option value="C+">C+</option>\n
            <option value="C">C</option>\n
            <option value="C-">C-</option>\n
            <option value="D+">D+</option>\n
            <option value="D">D</option>\n
            <option value="F">F</option>\n
        </select></label>\n
    <label>Credits:\n
        <select name="fourth" id="fourth">\n
            <option value="0" selected="selected">none</option>\n
            <option>1</option>\n
            <option>2</option>\n
            <option>3</option>\n
            <option>4</option>\n
            <option>5</option>\n
        </select>\n
    </label>\n
    <br/><br/>\n
    <input type="submit" id="gpaCalc" value="Calculate GPA"/>\n
    <br/><br/></form>\n\n'

footerString='
</body>\n
</html>\n'

calcGPA = (g1, g2, g3, g4, c1, c2, c3, c4) -> #calculates GPA between four grades
  theGPA = (g1 * c1 + g2 * c2 + g3 * c3 + g4 * c4)/(c1 + c2 + c3 + c4)
  theGPA

gradeToFloat = (grade) -> #returns the corresponding GPA
  retFlo = switch
    when grade is 'A' then 4.0
    when grade is 'A-' then 3.7
    when grade is 'B+' then 3.3
    when grade is 'B' then 3.0
    when grade is 'B-' then 2.7
    when grade is 'C+' then 2.3
    when grade is 'C' then 2.0
    when grade is 'C-' then 1.7
    when grade is 'D+' then 1.3
    when grade is 'D' then 1.0
    when grade is 'F' then 0.0
    else 0


exports.formResponse = (req, res) ->
  res.render 'gpa'

exports.postResponse = (req, res) ->
  grade1 = gradeToFloat(req.body.firstG)
  grade2 = gradeToFloat(req.body.secondG)
  grade3 = gradeToFloat(req.body.thirdG)
  grade4 = gradeToFloat(req.body.fourthG)
  credit1 = parseFloat(req.body.first)
  credit2 = parseFloat(req.body.second)
  credit3 = parseFloat(req.body.third)
  credit4 = parseFloat(req.body.fourth)

  res.send headerString + bodyString + '<p>Your GPA is: ' + calcGPA(grade1, grade2, grade3, grade4,
    credit1, credit2, credit3, credit4) + '</p>' + footerString

module.exports.calcGPA = calcGPA
module.exports.gradeToFloat = gradeToFloat
