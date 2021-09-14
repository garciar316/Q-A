<%-- 
    Document   : ListarJuegos
    Created on : 11-sep-2021, 11:16:42
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h3 class="text-center">Historico de juegos</h3>
            <div class="mt-4 table-responsive">
                <table class="table table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th class="header" scope="col">Juego</th>
                            <th class="header" scope="col">Nombre</th>
                            <th class="header" scope="col">Ronda</th>
                            <th class="header" scope="col">Estado</th>
                            <th class="header" scope="col">Acumulado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="juego" items="${jueg}">
                            <tr>
                            <th scope="row">${juego[0]}</th>
                            <td>${juego[1]}</td>
                            <td>${juego[2]}</td>
                            <td>${juego[3]}</td>
                            <td>${juego[4]}</td>
                        </tr>
                        </c:forEach>                       
                    </tbody>
                </table> 
            </div>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
</html>
<style type="text/css"> 
        thead tr th { 
            position: sticky;
            top: 0;
            z-index: 10;
            background-color: #ffffff;
        }
    
        .table-responsive { 
            height:200px;
            overflow:scroll;
        }
    </style>