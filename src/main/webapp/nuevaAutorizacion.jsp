<%-- 
    Document   : nuevaAutorizacion
    Created on : 21/10/2021, 10:35:58 p. m.
    Author     : AlvarezCuadros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Nueva Autorizacion</title>
  </head>
    <body>
        <div> <!--Div que contiene todo el body-->
            <div class="container-fluid p-2 bg-secondary text-white text-center">
                <h2>Nueva Autorizacion</h2>
            </div>
            <div class="container"> <!--DIV que contiene el formulario-->
                <h3>Complete los campos</h3>
                <form method="POST" action="recibidoAutorizacion.jsp">
                <!-- Form Name -->
                    <div class="row"> <!--Div de los campos-->
                        <!-- Text input-->
                        <div class="row">
                                <label for="autorizacion_Paciente_Id">Id del Paciente</label>
                                <input id="autorizacion_Paciente_Id" name="autorizacion_Paciente_Id" type="text" placeholder="-" required="">
                        </div>

                        <!-- Text input-->
                        <div class="row">
                          <label for="autorizacion_Entidad_Id">Id de la Entidad</label>  
                          <input id="autorizacion_Entidad_Id" name="autorizacion_Entidad_Id" type="text" placeholder="-" required="">
                        </div>

                        <!-- Date input-->
                        <div class="row">
                          <label for="autorizacion_Fecha">Fecha</label>  
                          <input id="autorizacion_Fecha" name="autorizacion_Fecha" type="date" required="">
                        </div>

                        <!-- Select Basic -->
                        <div class="row"> 
                            <label for="autorizacion_Estado_Id">Estado</label>
                            <select id="autorizacion_Estado_Id" name="autorizacion_Estado_Id">
                                <option value="1">Habilitado</option>
                                <option value="2">Deshabilitado</option>
                            </select>
                        </div>
                    </div>
                    <!-- Button -->
                    <div class="row">
                        <div align="center">
                            <button>Crear</button>
                            <button id="Cancelar" name="Cancelar" onclick="window.location.replace('listaAutorizacion.jsp')">Cancelar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
