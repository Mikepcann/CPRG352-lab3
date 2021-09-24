<%-- 
    Document   : arithmeticcalculator
    Created on : 23-Sep-2021, 5:30:28 PM
    Author     : mikep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h1>Arithmetic Calculator</h1>
            </div>
            <div class="main">
                <form action="arithmetic" method="POST" id="doMath">
                    <label for="first">First:</label>
                    <input type="text" name="first" value="${first}" min="0">
                    <br>
                    <label for="second">Second:</label> 
                    <input type="text" name="second" value="${second}" min="0">
                    <br>
                    <input type="submit" class="mathButt" name="operation" value="+"></input>
                    <input type="submit" class="mathButt" name="operation" value="-"></input>
                    <input type="submit" class="mathButt" name="operation" value="*"></input>
                    <input type="submit" class="mathButt" name="operation" value="%"></input>
                    <p>Result: <span>${answer}</span>
                        <br>
                        <a href="/Calculators/age">Age calculator</a>
                    </p>                      
                </form>
            </div>
        </div>
    </body>
</html>
