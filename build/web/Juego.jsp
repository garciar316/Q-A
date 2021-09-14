<%-- 
    Document   : Juego
    Created on : 11-sep-2021, 1:22:04
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
        <div class="container mt-4">
            <h4>Ronda: ${juego.getRonda_actual()}</h4>
            <form action="Controller" method="POST">
                <div class="card mt-4">
                    <div class="card-header">
                        Acumulado: ${juego.getAcumulado()}
                    </div>
                    <div class="card-body">
                        <h5>${pregunta.getDescripcion()}</h5>
                        <div class="form-check">
                            <input type="hidden" name ="contador" value="${contador}">
                            <input type="hidden" name ="id_pregunta" value="${pregunta.getId()}">
                            <c:forEach var="opcion" items="${op}">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="opcion" id="${opcion.getId()}" value="${opcion.getId()}">
                                    <label class="form-check-label" for="${opcion.getId()}">
                                        ${opcion.getDescripcion()}
                                    </label>
                                </div>
                            </c:forEach>

                        </div>
                        <div class="mt-2">
                            <input type="submit" name="accion" value="Continuar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Terminar" class="btn btn-primary">                            
                        </div>                    
                    </div>
                    <div class="card-footer text-muted">
                        Jugador: ${jug.getNombre()}
                    </div>
                </div>
            </form>
        </div>
        <div class="mt-4">
            <iframe src="Controller?accion=ListarJuegos" style="height: 100%; width: 100%;"></iframe>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
</html>
<style type="text/css">
    iframe {
        height: 300px !important;
        border:none; 
    }
</style>


