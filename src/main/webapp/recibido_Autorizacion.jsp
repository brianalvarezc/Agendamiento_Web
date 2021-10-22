<%-- 
    Document   : recibido
    Created on : 7/10/2021, 9:50:27 p. m.
    Author     : AlvarezCuadros
--%>

<%@page import="Logica.ColeccionAutorizacion"%>
<%@page import="Persistencia.AutorizacionDAO"%>
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

    <title>Nueva Autorizacion</title>
  </head>
    <body>
        
        <%
        String autorizacion_Paciente_Id = request.getParameter("autorizacion_Paciente_Id");
        String autorizacion_Entidad_Id = request.getParameter("autorizacion_Entidad_Id");
        String autorizacion_Fecha = request.getParameter("autorizacion_Fecha");
        String autorizacion_Estado_Id = request.getParameter("autorizacion_Estado_Id");
        // Creando el objeto Autorizacion
        Autorizacion a = new Autorizacion();
        a.setAutorizacion_Paciente_Id(Integer.parseInt(autorizacion_Paciente_Id));
        a.setAutorizacion_Entidad_Id(Integer.parseInt(autorizacion_Entidad_Id));
        a.setAutorizacion_Fecha(autorizacion_Fecha);
        a.setAutorizacion_Estado_Id(Integer.parseInt(autorizacion_Estado_Id));
        // Enviando los datos a la coleccion para que los envie a la BD
        ColeccionAutorizacion cole = new ColeccionAutorizacion();
        boolean guardado = cole.guardarAutorizacion(a);

        %>
        <!-- Comprobando los datos ingresados 
        <h2> <%= a.getAutorizacion_Paciente_Id()%> </h2>
        <h2> <%= a.getAutorizacion_Entidad_Id()%> </h2>
        <h2> <%= a.getAutorizacion_Fecha()%> </h2>
        <h2> <%= a.getAutorizacion_Estado_Id()%> </h2> 
        Comprobando los datos ingresados --> 
        
        <%if (guardado){
        %>
            <div class="Container" align="center">
                <h2>Ingreso creado!</h2>
            </div>
        <% } else {%>
            <div class="Container" align="center">
                <h2>Ingreso NO creado!</h2>
            </div>
          <% } %>
              
        <div class="container" align="center">
            <a href="lista_Autorizacion.jsp">
                <button type="button" class="btn-primary"><h4>Volver</h4></button>
            </a>
        </div>
    </body>
</html>
