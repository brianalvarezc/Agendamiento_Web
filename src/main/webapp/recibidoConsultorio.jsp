<%-- 
    Document   : recibido
    Created on : 7/10/2021, 9:50:27 p. m.
    Author     : AlvarezCuadros
--%>

<%@page import="Logica.ColeccionConsultorio"%>
<%@page import="Logica.Consultorio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Nuevo Consultorio</title>
  </head>
    <body>

        <div class="container-fluid p-2 bg-secondary text-white text-center">
            <h2>Nuevo Consultorio</h2>
        </div>
        
        <!-- Recuperando los datos del formulario nuevaCita.jsp -->
        <%
        String consultorio_Nombre = request.getParameter("consultorio_Nombre");
        String consultorio_Ubicacion = request.getParameter("consultorio_Ubicacion");
        String consultorio_Estado_Id = request.getParameter("consultorio_Estado");
        // Creando el objeto
        Consultorio c = new Consultorio();
        c.setConsultorio_Nombre(consultorio_Nombre);
        c.setConsultorio_Ubicacion(consultorio_Ubicacion);
        c.setConsultorio_Estado_Id(Integer.parseInt(consultorio_Estado_Id));
        // Enviando los datos a la coleccion para que los envie a la BD
        ColeccionConsultorio cole = new ColeccionConsultorio();
        boolean guardado = cole.guardarConsultorio(c);
        if (guardado){
        %>
            <div class="Container" align="center">
                <h2>Ingreso creado!</h2>
            </div>
        <% } else {%>
            <div class="Container" align="center">
                <h2>Ingreso NO creado!, datos ingresados:</h2>
                <h2><%= consultorio_Nombre%></h2>
                <h2><%= consultorio_Ubicacion%></h2>
                <h2><%= consultorio_Estado_Id%></h2>
            </div>
          <% } %>
              
        <div align="center">
            <a href="listaConsultorio.jsp">
                <button type="button">Volver</button>
            </a>
        </div>
    </body>
</html>
