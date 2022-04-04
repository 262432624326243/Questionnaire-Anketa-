<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Questionnaire</title>
</head>
<body>

<h1><%= "Questionnaire" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>

<table>
    <form action="/Questionnaire_war_exploded/QuestionnaireServlet" method="POST">
        <tr>
            <td>Enter your name</td>
        </tr>

        <tr>
            <td><input type="text" name="name" placeholder="name"></td>
        </tr>

        <tr>
            <td>Enter your lastname</td>
        </tr>

        <tr>
            <td><input type="text" name="lastname" placeholder="lastname"></td>
        </tr>

        <tr>
            <td>How old are you?</td>
        </tr>

        <tr>
            <td>
                <p><input name="age" type="radio" value="16-20" checked>16-20</p>
                <p><input name="age" type="radio" value="21-30">21-30</p>
                <p><input name="age" type="radio" value="30-90">30-90</p>
            </td>
        </tr>

        <tr>
            <td>What country are you from?</td>
        </tr>

        <tr>
            <td><input type="text" name="country" placeholder="country"></td>
        </tr>

        <tr>
            <td><input type="submit" value="Submit"/></td>
        </tr>

    </form>
</table>
</body>
</html>