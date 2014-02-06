headerString= '<!DOCTYPE html>
<html>
<head>
    <title>GPA Calculator</title>
</head>
<body>
<h1>Enter your grades and number of credits</h1><br/>'

bodyString='<form name="gpa">
    <label>Grade:
        <select id="firstG">
            <option selected="selected">none</option>
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
        <select id="first">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </label>
    <br/>

    <label>Grade:
        <select id="secondG">
            <option selected="selected">none</option>
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
        <select id="second">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </label>
    <br/>

    <label>Grade:
        <select id="thirdG">
            <option selected="selected">none</option>
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
        <select id="third">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </label>
    <br/>

    <label>Grade:
        <select id="fourthG">
            <option selected="selected">none</option>
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
        <select id="fourth">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </label>
    <br/><br/>
    <input type="button" id="gpaCalc" value="Calculate GPA"/>
    <br/><br/>'

footerString='
</body>
</html>'

calcGPA = () ->



exports.formResponse = (req, res) ->
  res.render 'gpa'

exports.postResponse = (req, res) ->
  res.send headerStr + bodyString + '<p>Your GPA is: ' + calcGPA() + '</p>' + footerStr
