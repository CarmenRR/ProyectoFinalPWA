<%-- 
    Author     : María del Carmen Reyes Rocha
--%>

<%@page import="modelo.Maestro"%>
<%@page import="modelo.JavaDB"%>
<%@page import="modelo.Login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controlador.login_controlador"%>
<style>
    html, body{
        margin: 0;
    }
    h1{
        font-size: 4rem;
        text-align: center;
    }
    
    
.contenedor{
    background-color:#017D56;
    max-width: 100%;
    margin: 0 auto;
    padding: 2rem;
}

.two{
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.navegacion a{
    text-decoration: none;
    font-size: 1.5rem;
    color: #AFDE9E;
    text-align: left;
    text-align: right;  
    margin-right: 2rem;
    padding-right: 2rem;
    
}
.cerrar-sesion{
    text-decoration: none;
    font-size:1.5rem;
    color: white;
    
}

.cerrar-sesion:hover{
    color:#369E75;
}

</style>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Inicio</title>
    </head>
    <body>
        <%
            //Sesion activa
            Maestro maestro = new Maestro();

            if (session != null) {
                if (session.getAttribute("usuario") != null && session.getAttribute("tipo") != null) {
                    String usuario = (String) session.getAttribute("usuario");
                    String tipo = (String) session.getAttribute("tipo");

                    //obtener el nombre
                    String name = maestro.getMaestro(usuario);

                    maestro.setNombreMaestro(name);

                } else {
                    response.sendRedirect("index.jsp");
                }
            }
        %>

        <header>
            <div class="contenedor">
                <div class="two">
                    <nav class="navegacion">

                        <a href="inicioadmin.jsp">Inicio</a>
                        <a href="seleccionarJefe">Agregar Carrera</a>
                        <a href="verMaestros_controlador">Profesores</a>
                    </nav> 
                    <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>
                </div>
            </div>
        </header>    
        <h1 class="Verde-5">¡BIENVENIDO<span class="Verde-2"> ADMINISTRADOR </span>!</h1>

    </body>
</html>
