<%-- 
    Document   : crearCarrera
    Author     : María del Carmen Reyes Rocha
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Maestro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    html, body{
        margin: 0;
    }
    h1{
        font-size: 1.8rem;
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

    form{
        background-color: #AFDE9E;
        border-radius: 5px;
        height: 35%;
        width: 30%;
        margin: auto;
        margin-top: 2rem;
        font-size: 1.5rem;
        box-shadow: 2px 2px 10px #666;
        display: flex;
        flex-direction: column;
        align-items: center;

    }
    
    form select{
        margin: auto;
    }

    .boton{
        background-color: #017D56;
        color: #D4DBF5;
        margin-top: auto;
        margin-bottom: auto;
        padding: 1rem;
        border: none;
    }
    .boton:hover{
        background-color: #369E75;
    }

</style>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Alta Carrera</title>
    </head>
    <body>

        <%
            //Sesion activa

            if (session != null) {
                if (session.getAttribute("usuario") != null && session.getAttribute("tipo") != null) {
                    String usuario = (String) session.getAttribute("usuario");
                    String tipo = (String) session.getAttribute("tipo");
                } else {
                    response.sendRedirect("index.jsp");
                }
            }
        %>

        <%
            // ArrayList<Maestro> list = Maestro.listaMaestro();
            ArrayList<Maestro> listaMaestro = (ArrayList<Maestro>) request.getAttribute("lista");
        %>
        <header>
            <div class="contenedor">
                <div class="two">
                    <nav class="navegacion">

                        <a href="inicioadmin.jsp">Inicio</a>
                        <a href="crearCarrera.jsp">Agregar Carrera</a>
                        <a href="verMaestros_controlador">Profesores</a>


                    </nav> 
                    <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesion</a>


                </div>

            </div>

        </header>



        <h1>Registrar carrera</h1>


        <form action="crearCarrera_controlador" method="post">


            <label> Clave de Carrera </label>
            <input type="text" name="idCarrera" required=""> 

            <label>Nombre de la Carrera</label>

            <input type="text" name="nombreCarrera" required="">


            <select name="jefe" id="jefe">

                <option value="0"> Seleccione jefe </option>
                <% try {
                        for (Maestro li : listaMaestro) {%>
                <option value="<%= li.getIdMaestro()%>"><%= li.getNombreMaestro()%> </option>

                <% }
                    } catch (Exception e) {
                        System.out.println(e);
                    }%>

            </select>

            <input class="boton" type="submit" value="Registrar">



        </form>
    </body>
    
    
</html>
