<%-- 
    Document   : recibido
    Created on : 7/10/2021, 9:50:27 p. m.
    Author     : AlvarezCuadros
--%>

<%@page import="Logica.ColeccionCita"%>
<%@page import="Logica.Cita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Nueva Cita</title>
  </head>
    <body>

        <div class="container-fluid p-2 bg-secondary text-white text-center">
            <h2>Nueva Cita</h2>
        </div>
        
        <!-- Recuperando los datos del formulario nuevaCita.jsp -->
        <%
        String cita_Fecha = request.getParameter("cita_Fecha");
        String cita_Hora = request.getParameter("cita_Hora");
        String cita_Autorizacion_Id = request.getParameter("cita_Autorizacion_Id");
        String cita_Entidad_Id = request.getParameter("cita_Entidad_Id");
        String cita_Paciente_Id = request.getParameter("cita_Paciente_Id");
        String cita_Medico_Id = request.getParameter("cita_Medico_Id");
        String cita_Estado_Id = request.getParameter("cita_Estado_Id");
        String cita_Consultorio_Id = request.getParameter("cita_Consultorio_Id");
        // Creando el objeto
        Cita c = new Cita();
        c.setCita_Fecha(cita_Fecha);
        c.setCita_Hora(cita_Hora);
        c.setCita_Autorizacion_Id(Integer.parseInt(cita_Autorizacion_Id));
        c.setCita_Entidad_Id(Integer.parseInt(cita_Entidad_Id));
        c.setCita_Paciente_Id(Integer.parseInt(cita_Paciente_Id));
        c.setCita_Medico_Id(Integer.parseInt(cita_Medico_Id));
        c.setCita_Estado_Id(Integer.parseInt(cita_Estado_Id));
        c.setCita_Consultorio_Id(Integer.parseInt(cita_Consultorio_Id));
        // Enviando los datos a la coleccion para que los envie a la BD
        ColeccionCita cole = new ColeccionCita();
        boolean guardado = cole.guardarCita(c);

        if (guardado){
        %>
            <div class="Container" align="center">
                <h2>Ingreso creado!</h2>
            </div>
        <% } else {%>
            <div class="Container" align="center">
                <h2>Ingreso NO creado!</h2>
            </div>
          <% } %>
              
        <div align="center">
            <a href="listaCita.jsp">
                <button type="button">Volver</button>
            </a>
        </div>
    </body>
</html>
