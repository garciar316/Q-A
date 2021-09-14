<%-- 
    Document   : idex
    Created on : 11-sep-2021, 0:52:22
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
        <diV class="container mt-4" style="width: 30%;">
            <h2>Preguntas Y Respuestas</h2>
            <form action="Controller" method="POST">
                <div class="mb-3 row">
                    <label for="txtNombre" class="col-sm-2 col-form-label">Nombre</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="txtNombre" id="txtNombre" placeholder="Ingrese su nombre" required>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="txtEdad" class="col-sm-2 col-form-label">Edad</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" name="txtEdad" id="txtEdad" placeholder="Ingrese su edad" required>
                    </div>
                </div>
                <div class="text-center">
                    <input type="submit" name="accion" value="Jugar" class="btn btn-primary">
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

<style>
    iframe{ 
        height: 300px !important;
        border:none; 
    }
    input[type=number]::-webkit-inner-spin-button, 
    input[type=number]::-webkit-outer-spin-button { 
        -webkit-appearance: none; 
        margin: 0; 
    }
</style>
