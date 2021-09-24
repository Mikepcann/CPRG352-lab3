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
    </head>
    <body>
        <div class="header">
            <h1>Arithmetic Calculator</h1>
        </div>
        <div class="main">
            <form action="arithmetic" method="POST" id="doMath">
                <label for="first">First:</label>
                    <input type="number" name="first" value="">
                    <br>
                    <label for="second">Second:</label> 
                    <input type="number" name="second" value="">
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
    </body>
</html>
