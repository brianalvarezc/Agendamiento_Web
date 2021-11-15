<%-- 
    Document   : listaCita
    Created on : 21/10/2021, 11:13:27 p. m.
    Author     : AlvarezCuadros
--%>

<%@page import="Logica.Entidad"%>
<%@page import="Logica.ColeccionEntidad"%>
<%@page import="Logica.Consultorio"%>
<%@page import="Logica.ColeccionConsultorio"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Lista de Consultorios</title>
  </head>
    <body>

        <div class="container-fluid p-2 bg-secondary text-white text-center">
            <h2>Consultorios</h2>
        </div>
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <td>Entidad ID</td>
                        <td>Nombre</td>
                        <td>Ubicacion</td>
                        <td>Tarifa</td>
                        <td>Estado</td>
                    </tr>
                </thead>
                <%
                    ColeccionEntidad coleccion = new ColeccionEntidad();
                    boolean hayDatos = coleccion.cargarEntidades();
                %>
                <tbody>
                <%if (hayDatos){%>
                <%for(Entidad e: coleccion.getLista()){%>
                    <tr>
                        <td><%= e.getEntidad_Id()%></td>
                        <td><%= e.getEntidad_Nombre()%></td>
                        <td><a href="<%= e.getEntidad_Ubicacion()%>">Ver en el mapa</td>
                        <td><%= e.getEntidad_Tarifa()%></td>
                        <td><%= e.getEntidad_Estado_Nombre()%></td>
                    </tr>
                    
                <% }}else{ %>
                    <tr>
                        <td colspan="5" >No hay datos</td>
                    </tr>
                    
                    <%}%>
                </tbody>
            </table>
            <div class="row" align="center">
                <div class="col">
                    <a href="nuevaEntidad.jsp">
                        <button>Crear</button>
                    </a>
                </div>
                <div class="col">
                    <a href="index.jsp">
                        <button>Salir</button>
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>
