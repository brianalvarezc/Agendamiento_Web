<%-- 
    Document   : prueba
    Created on : 6/10/2021, 5:55:37 a. m.
    Author     : AlvarezCuadros
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Persistencia.AutorizacionDAO"%>
<%@page import="Logica.ColeccionAutorizacion"%>
<%@page import="Logica.Autorizacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Lista de Autorizaciones</title>
  </head>
    <body>

        <div align="center">
            <h2>Autorizaciones</h2>
        </div>
        <div>
            <table class="table table-striped">
                <thead>
                  <tr>
                    <td width="15%">Autorizacion ID</td>
                    <td>Entidad</td>
                    <td>Paciente</td>
                    <td>Fecha</td>
                    <td>Estado</td>
                  </tr>
                </thead>
                <%
                    ColeccionAutorizacion coleccion = new ColeccionAutorizacion();
                    boolean hayDatos = coleccion.cargarAutorizaciones();
                %>
                <tbody>
                <%if (hayDatos){%>
                <%for(Autorizacion a: coleccion.getLista()){%>
                    <tr>
                      <td><%= a.getAutorizacion_Id() %></td>
                      <td><%= a.getAutorizacion_Entidad_Nombre()%></td>
                      <td><%= a.getAutorizacion_Paciente_Nombre()%></td>
                      <td><%= a.getAutorizacion_Fecha()%></td>
                      <td><%= a.getAutorizacion_Estado_Nombre() %></td>
                    </tr>
                    
                <% }}else{ %>
                    <tr>
                        <td colspan="10" >No hay datos</td>
                    </tr>
                    
                    <%}%>
                </tbody>
                    
            </table>
        </div>
        <div class="container" align="center">
            <a href="nueva_Autorizacion.html">
                <button type="button" class="btn-primary"><h4>Crear</h4></button>
            </a>
        </div>
        <div class="container" align="center">
            <a href="index.jsp">
                <button type="button" class="btn-primary"><h4>Salir</h4></button>
            </a>
        </div>
    </body>
</html>
