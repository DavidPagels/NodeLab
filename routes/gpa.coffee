headerString='<!DOCTYPE html>
<html>
<head>
    <title>GPA Calculator</title>
</head>
<body>
<h1>Enter your grades and number of credits</h1><br/>'

bodyString='<form method="post" action="/gpa">
    <label>Grade:
        <select name="firstG" id="firstG">
            <option value="0" selected="selected">none</option>
            <option value="4.0">A</option>
            <option value="3.7">A-</option>
            <option value="3.3">B+</option>
            <option value="3.0">B</option>
            <option value="2.7">B-</option>
            <option value="2.3">C+</option>
            <option value="2.0">C</option>
            <option value="1.7">C-</option>
            <option value="1.3">D+</option>
            <option value="1.0">D</option>
            <option value="0.0">F</option>
        </select></label>
    <label>Credits:
        <select name="first" id="first">
            <option value="0" selected="selected">none</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </label>
    <br/>

    <label>Grade:
        <select name="secondG" id="secondG">
            <option value="0" selected="selected">none</option>
            <option value="4.0">A</option>
            <option value="3.7">A-</option>
            <option value="3.3">B+</option>
            <option value="3.0">B</option>
            <option value="2.7">B-</option>
            <option value="2.3">C+</option>
            <option value="2.0">C</option>
            <option value="1.7">C-</option>
            <option value="1.3">D+</option>
            <option value="1.0">D</option>
            <option value="0.0">F</option>
        </select></label>
    <label>Credits:
        <select name="second" id="second">
            <option value="0" selected="selected">none</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </label>
    <br/>

    <label>Grade:
        <select name="thirdG" id="thirdG">
            <option value="0" selected="selected">none</option>
            <option value="4.0">A</option>
            <option value="3.7">A-</option>
            <option value="3.3">B+</option>
            <option value="3.0">B</option>
            <option value="2.7">B-</option>
            <option value="2.3">C+</option>
            <option value="2.0">C</option>
            <option value="1.7">C-</option>
            <option value="1.3">D+</option>
            <option value="1.0">D</option>
            <option value="0.0">F</option>
        </select></label>
    <label>Credits:
        <select name="third" id="third">
            <option value="0" selected="selected">none</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </label>
    <br/>

    <label>Grade:
        <select name="fourthG" id="fourthG">
            <option value="0" selected="selected">none</option>
            <option value="4.0">A</option>
            <option value="3.7">A-</option>
            <option value="3.3">B+</option>
            <option value="3.0">B</option>
            <option value="2.7">B-</option>
            <option value="2.3">C+</option>
            <option value="2.0">C</option>
            <option value="1.7">C-</option>
            <option value="1.3">D+</option>
            <option value="1.0">D</option>
            <option value="0.0">F</option>
        </select></label>
    <label>Credits:
        <select name="fourth" id="fourth">
            <option value="0" selected="selected">none</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </label>
    <br/><br/>
    <input type="submit" id="gpaCalc" value="Calculate GPA"/>
    <br/><br/></form>'

footerString='
</body>
</html>'

calcGPA = (g1, g2, g3, g4, c1, c2, c3, c4) ->
  theGPA = (g1 * c1 + g2 * c2 + g3 * c3 + g4 * c4)/(c1 + c2 + c3 + c4)
  theGPA

exports.formResponse = (req, res) ->
  res.render 'gpa'

exports.postResponse = (req, res) ->
  console.log req.body
  grade1 = parseFloat(req.body.firstG)
  grade2 = parseFloat(req.body.secondG)
  grade3 = parseFloat(req.body.thirdG)
  grade4 = parseFloat(req.body.fourthG)
  credit1 = parseFloat(req.body.first)
  credit2 = parseFloat(req.body.second)
  credit3 = parseFloat(req.body.third)
  credit4 = parseFloat(req.body.fourth)

  res.send headerString + bodyString + '<p>Your GPA is: ' + calcGPA(grade1, grade2, grade3, grade4,
    credit1, credit2, credit3, credit4) + '</p>' + footerString
