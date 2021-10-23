<%-- 
    Document   : listaCita
    Created on : 21/10/2021, 11:13:27 p. m.
    Author     : AlvarezCuadros
--%>

<%@page import="Logica.Cita"%>
<%@page import="Logica.ColeccionCita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Lista de Citas</title>
  </head>
    <body>

        <div class="container-fluid p-2 bg-secondary text-white text-center">
            <h2>Citas</h2>
        </div>
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <td>Cita ID</td>
                        <td>Fecha</td>
                        <td>Hora</td>
                        <td>Autorizacion ID</td>
                        <td>Entidad</td>
                        <td>Paciente</td>
                        <td>Medico</td>
                        <td>Estado</td>
                        <td>Consultorio</td>
                        <td>Ubicacion</td>
                    </tr>
                </thead>
                <%
                    ColeccionCita coleccion = new ColeccionCita();
                    boolean hayDatos = coleccion.cargarCitas();
                %>
                <tbody>
                <%if (hayDatos){%>
                <%for(Cita c: coleccion.getLista()){%>
                    <tr>
                        <td><%= c.getCita_Id() %></td>
                        <td><%= c.getCita_Fecha() %></td>
                        <td><%= c.getCita_Hora() %></td>
                        <td><%= c.getCita_Autorizacion_Id() %></td>
                        <td><%= c.getCita_Entidad_Nombre() %></td>
                        <td><%= c.getCita_Paciente_Nombre() %></td>
                        <td><%= c.getCita_Medico_Nombre() %></td>
                        <td><%= c.getCita_Estado_Nombre() %></td>
                        <td><%= c.getCita_Consultorio_Nombre() %></td>
                        <td><a href="<%= c.getCita_Consultorio_Ubicacion() %>">Ver en el mapa</a></td>
                    </tr>
                    
                <% }}else{ %>
                    <tr>
                        <td colspan="10" >No hay datos</td>
                    </tr>
                    
                    <%}%>
                </tbody>
            </table>
            <div class="row" align="center">
                <div class="col">
                    <a href="nuevaCita.jsp">
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
