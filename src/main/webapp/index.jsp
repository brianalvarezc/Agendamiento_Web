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
    <body>
        <div  align="center"; style="border: 1px outset blue; margin-top: 5%; width: 50%; height: 50%; margin-left: 30%; margin-right: 30%">
            <!-- Icon -->
            <div>
              <img src="imagenes\logologin.png" id="icon" alt="Login Icon" />
            </div>

            <!-- Login Form -->
            <div>
                <form class="form" method="post" action="inicio.jsp">
                    <div><input class="text" id="user" class="fadeIn second" name="user" placeholder="User"></div>
                    <div><input class="text" type="password" id="password" class="fadeIn third" name="password" placeholder="Password"></div>
                    <div><input type="submit" class="btn-primary" value="LogIn"></div>
                </form>
            </div>

            <!-- Remind Passowrd -->
            <div>
              <a href="#">Olvidaste la contraseña?</a>
            </div>

          </div>
        </div>
    </body>
</html>
