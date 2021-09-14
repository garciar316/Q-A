<%-- 
    Document   : Prueba
    Created on : 11-sep-2021, 9:14:47
    Author     : User
--%>

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
            <div class="card text-center">
                <div class="card-header">
                    Juego terminado
                </div>
                <div class="card-body">
                    <h5 class="card-title">Jugador: ${jugador.getNombre()}</h5>
                    <p class="card-text">Acumulado: ${juego.getAcumulado()}</p>
                    <p class="card-text">Rondas: ${juego.getRonda_actual()}</p>
                    <form action="Controller" method="POST">
                        <input type="submit" name="accion" value="Inicio" class="btn btn-primary">
                    </form>                                       
                </div>
            </div>
        </div>
        <div class="mt-4">
            <iframe src="Controller?accion=ListarJuegos" style="height: 100%; width: 100%;"></iframe>
        </div>       
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
</html>
<style type="text/css">
    iframe{ 
        height: 300px !important;
        border:none; 
    }
</style>
