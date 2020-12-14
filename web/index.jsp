<%-- 
    Document   : index
    Created on : 25/11/2020, 08:50:49 PM
    Author     : María del Carmen Reyes Rocha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>

    form{
        background-color: rgba(255, 255, 255, 0.7);
        border-radius: 5px;
        height: 65%;
        width: 30%;
        padding: 2%;
        margin: auto;
        margin-top: 5rem;
        font-size: 1.5rem;
        box-shadow: 2px 2px 10px #666;
        display: flex;
        flex-direction: column;
        align-items: center;

    }

    body{
        background-color: #EDFFD3;
    }

    .boton{
        background-color: #017D56;
        color: #D4DBF5;
        margin-top: auto;
        padding: 1rem;
        border: none;
    }
    .boton:hover{
        background-color: #369E75;
    }

    .Verde-1 { color: #EDFFD3; }
    .Verde-2{ color: #AFDE9E; }
    .Verde-3 { color: #369E75; }
    .Verde-4{ color: #017D56; }
    .Verde-5{ color: #014731; }

    h1{
        text-align: center;
        font-size: 1.8rem
    }

    form input{
        border: 2px solid #017D56;
    }

</style>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css"/> 
        <title>Inicio de sesión</title>
    </head>
    <body class="fondo">


        <form class="formulario" action="login_controlador" method="post">
            <img src="img/man.png" widht="100px" height="100px" center>
            <img href="">
            <h1 class="Verde-5">Iniciar Sesión</h1>
            <label>Usuario</label>

            <input type="text" name="usuario">
            <label>Contraseña</label>
            <input type="password" name="pass">

            <input type="submit" class="boton" name="ingresar"value="Iniciar sesión">
        </form>

    </body>

</html>
