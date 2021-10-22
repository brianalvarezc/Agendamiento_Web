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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar sesión</title>
    </head>
    <body style="background-image: url(imagenes/fondobodyindex.jpg);">
        <div align="center" style="padding: 1%;">
            <div  align="center"; style="border: 1px outset blue; box-shadow: 5px 10px #cccccc; padding: 20px; width: 400px; background-color: #ffffff;">
                <!-- Icon -->
                <div>
                  <img src="imagenes\logologin.png" id="icon" alt="Login Icon" />
                </div>

                <!-- Login Form -->
                <div style="width: 400px">
                    <form class="form" method="post" action="inicio.jsp">
                        <div><input class="text" type="text" id="user" name="user" placeholder="User"></div>
                        <div><input class="text" type="password" id="password" name="password" placeholder="Password"></div>
                        <div><input type="submit" value="LogIn" style="background-color: #39ace7; width: 30%; "></div>
                    </form>
                </div>

                <!-- Remind Passowrd -->
                <div>
                  <a href="#">Olvidaste la contraseña?</a>
                </div>
                <div>
                  <a href="#">Registrate</a>
                </div>
              </div>
        </div>
    </body>
</html>
