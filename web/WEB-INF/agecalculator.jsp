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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h1>Age Calculator</h1>
            </div>

            <div class="main">
                <form action="age" method="POST">
                    <div class="mb-3 row"> 
                        <label for="age" class="col-sm-2 col-form-label">Enter your age:</label>
                        <div class="col-sm-3">
                            <input type="text" name="age" value="" class="form-control">
                        </div>
                    </div>
                    <br>
                    <input type="submit"   class="btn btn-primary" value="Age next birthday">
                    <br>
                    <span>${message}</span>
                    <br>
                    <br>
                    <a href="/Calculators/arithmetic"  class="btn btn-primary">Arithmetic calculator</a>                       
                </form>
            </div>
        </div>
    </body>
</html>
