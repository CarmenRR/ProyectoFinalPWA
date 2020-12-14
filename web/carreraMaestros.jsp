<%-- 

    Author     : María del Carmen Reyes Rocha
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Maestro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Maestros</title>
    </head>
    <body>
        <%
            Maestro maestro = new Maestro();
            String idMaestro = (String) request.getParameter("idMaestro");
            maestro.setIdMaestro(idMaestro);


        %>

        <header>
            <div class="contenedor">
                <div class="two">

                    <nav class="navegacion">
                        <a href="jefe_controlador">Inicio</a>
                        <a href="perfilm_controlador?idMaestro=<%= maestro.getIdMaestro()%>">Perfil</a>



                    </nav>
                    <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

                </div>

            </div>

        </header>


        <% ArrayList<Maestro> lista = (ArrayList<Maestro>) request.getAttribute("listaMaestros");
            String idCarrera = (String) request.getAttribute("idCarrera");
            request.setAttribute("idCarrera", idCarrera);


        %>
        <h1>MAESTROS DE CARRERA: <%=idCarrera%> </h1>


        <table class="tabla">
            <thead>
            <th>Id Maestro</th>
            <th>Maestro</th>
            <th> Información </th>
        </thead>
        <tbody>
            <% for (Maestro li : lista) {

            %>
            <tr>
                <td><%= li.getIdMaestro()%></td>
                <td><%= li.getNombreMaestro()%></td>

                <td><a href="reporte_controlador?idMaestro=<%= li.getIdMaestro()%>">Reporte</a></td>

            </tr>
            <% }%>
        </tbody>
    </table>


    <style>





        html, body{
            margin: 0;
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
        .navegacion a:hover{
            color:#014731;
        }
        .cerrar-sesion{
            text-decoration: none;
            font-size:1.5rem;
            color: white;

        }

        .cerrar-sesion:hover{
            color:#369E75;
        }
        
        
        .tabla{
         border: 1px solid #666;
            border-collapse:collapse;
            border-radius: 5px;
            margin: auto;
            box-shadow: 2px 2px 5px #999;
            margin-top: 1rem;
            margin-bottom: 1rem;
            width: 60%;


        }
        .tabla tbody{
            border: 1px solid #666;
            padding: 1rem;

        }

        td a{
            font-size: 1.5rem;
        }
        
        h1{
            text-align: center;
        }

    </style>

</body>
</html>
