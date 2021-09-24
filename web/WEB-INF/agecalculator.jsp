<%-- 
    Document   : agecalculator
    Created on : 23-Sep-2021, 4:47:50 PM
    Author     : mikep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <div class="header">
            <h1>Age Calculator</h1>
        </div>
        
        <div class="main">
            <form action="age" method="POST">
                <label for="age">Enter your age:</label>
                    <input type="text" name="age" value="">
                    <br>
                    <input type="submit" value="Age next birthday">
                    <br>
                    <span>${message}</span>
                    <br>
                    <a href="/Calculators/arithmetic">Arithmetic calculator</a>                       
            </form>
        </div>
    </body>
</html>
