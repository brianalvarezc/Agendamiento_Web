<%-- 
    Document   : recibido
    Created on : 7/10/2021, 9:50:27 p. m.
    Author     : AlvarezCuadros
--%>

<%@page import="Logica.ColeccionEntidad"%>
<%@page import="Logica.Entidad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Nueva Entidad</title>
  </head>
    <body>

        <div class="container-fluid p-2 bg-secondary text-white text-center">
            <h2>Nueva Entidad</h2>
        </div>
        
        <!-- Recuperando los datos del formulario nuevaCita.jsp -->
        <%
        String entidad_Nombre = request.getParameter("entidad_Nombre");
        String entidad_Ubicacion = request.getParameter("entidad_Ubicacion");
        String entidad_Tarifa = request.getParameter("entidad_Tarifa");
        String entidad_Estado = request.getParameter("entidad_Estado");
        String entidad_Telefono = request.getParameter("entidad_Telefono");
        // Creando el objeto
        Entidad e = new Entidad();
        e.setEntidad_Nombre(entidad_Nombre);
        e.setEntidad_Ubicacion(entidad_Ubicacion);
        e.setEntidad_Telefono(Integer.parseInt(entidad_Telefono));
        e.setEntidad_Estado_Id(Integer.parseInt(entidad_Estado));
        e.setEntidad_Tarifa(entidad_Tarifa);
        // Enviando los datos a la coleccion para que los envie a la BD
        ColeccionEntidad cole = new ColeccionEntidad();
        boolean guardado = cole.crearEntidad(e);
        if (guardado){
        %>
            <div class="Container" align="center">
                <h2>Ingreso creado!</h2>
            </div>
        <% } else {%>
            <div class="Container" align="center">
                <h2>Ingreso NO creado!, datos ingresados:</h2>
                <h2><%= entidad_Nombre%></h2>
                <h2><%= entidad_Ubicacion%></h2>
                <h2><%= entidad_Telefono%></h2>
                <h2><%= entidad_Estado%></h2>
            </div>
          <% } %>
              
        <div align="center">
            <a href="listaEntidad.jsp">
                <button type="button">Volver</button>
            </a>
        </div>
    </body>
</html>
