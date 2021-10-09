<%-- 
    Document   : index
    Created on : 4/10/2021, 7:08:34 p. m.
    Author     : AlvarezCuadros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar sesión</title>
    </head>
    <body>
        <div class="wrapper fadeInDown">
          <div id="formContent">
            <!-- Tabs Titles -->

            <!-- Icon -->
            <div class="fadeIn first">
              <img src="imagenes\logologin.png" id="icon" alt="User Icon" />
            </div>

            <!-- Login Form -->
            <form class="form-horizontal" method="GET" action="lista_Autorizacion.jsp">
              <input type="text" id="user" class="fadeIn second" name="user" placeholder="User">
              <input type="text" id="password" class="fadeIn third" name="password" placeholder="Password">
              <input type="submit" class="btn" value="LogIn">
            </form>

            <!-- Remind Passowrd -->
            <div id="formFooter">
              <a class="underlineHover" href="#">Forgot Password?</a>
            </div>

          </div>
        </div>
    </body>
</html>
