<%-- 
    Document   : inicio
    Created on : 11/10/2021, 7:30:20 p. m.
    Author     : AlvarezCuadros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="css/style1.css" rel="stylesheet" type="text/css">
        <!------ Include the above in your HEAD tag ---------->
    </head>
    <body>
        <%
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        System.out.println(user + " " + password);
        
        %>
        <div class="container-fluid p-2 bg-secondary text-white text-center">
            <h2>Bienvenido: <%= user%></h2>
        </div>
        <!-- ---------------- Recibiendo el login ---------------- -->

            
        <div class="container">
            <% if(("admin").equals(user) && ("123").equals(password)){ %>
            
                <div class="row">
                    <div class="col-sm-2">
                        <div class="row">
                            <a href="nuevaAutorizacion.jsp">
                                <input type="button" value="Crear Autorizacion"></input>
                            </a>
                        </div>
                        <div class="row">
                            <a href="nuevaCita.jsp">
                                <input type="button" value="Crear Cita"></input>
                            </a>
                        </div>
                        <div class="row">
                            <a href="nuevoConsultorio.jsp">
                                <input type="button" value="Crear Consultorio"></input>
                            </a>
                        </div>
                        <div class="row">
                            <a href="nuevaEntidad.jsp">
                                <input type="button" value="Crear Entidad"></input>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="row">
                            <a href="listaAutorizacion.jsp">
                                <input type="button" value="Lista Autorizacion"></input>
                            </a>
                        </div>
                        <div class="row">
                            <a href="listaCita.jsp">
                                <input type="button" value="Lista Cita"></input>
                            </a>
                        </div>
                        <div class="row">
                            <a href="listaConsultorio.jsp">
                                <input type="button" value="Lista Consultorio"></input>
                            </a>
                        </div>
                        <div class="row">
                            <a href="listaEntidad.jsp">
                                <input type="button" value="Lista Entidad"></input>
                            </a>
                        </div>
                    </div>
                </div>
        </div>
            <% }else{ %>
                <h3>Credenciales incorrectas <%= user%> y pass: <%= password%></h3>
            <%}%>
        </div>
    </body>
</html>
