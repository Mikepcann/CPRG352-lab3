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
                    <div class="mb-3 row">
                        <label for="first" class="col-sm-2 col-form-label">First:</label>
                        <div class="col-sm-1">
                            <input class="form-control" type="text" name="first" value="${first}" min="0">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="second" class="col-sm-2 col-form-label">Second:</label> 
                        <div class="col-sm-1">
                            <input class="form-control" type="text" name="second" value="${second}" min="0">
                        </div> 
                    </div>
                    <div class="mb-1 col">
                        <br>
                        <input type="submit" class="btn btn-primary mb-3" name="operation" value="+"></input>
                        <input type="submit" class="btn btn-primary mb-3" name="operation" value="-"></input>
                        <input type="submit" class="btn btn-primary mb-3" name="operation" value="*"></input>
                        <input type="submit" class="btn btn-primary mb-3" name="operation" value="%"></input>
                    </div>
                    <div class="card w-25">
                        <div class="card-body">
                            <p class="card-title">Result: <span class="bold">${answer}</span>
                                <br>
                                <a href="/Calculators/age"  class="btn btn-primary">Age calculator</a>
                            </p>
                        </div> 
                    </div>                    
                </form>
            </div>
        </div>
    </body>
</html>
