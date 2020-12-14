<%@page import="modelo.Maestro"%>
<%@page import="java.util.ArrayList"%>
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


        <% ArrayList<Maestro> lista = (ArrayList<Maestro>) request.getAttribute("listaMaestros"); %>

        <h1>Maestros</h1>

        <table class="tabla">
            <thead>
            <th>Id Maestro</th>
            <th>Maestro</th>
            <th> Información </th>
        </thead>
        <tbody>
            <%  try {

                    for (Maestro li : lista) {

            %>
            <tr>
                <td><%= li.getIdMaestro()%></td>
                <td><%= li.getNombreMaestro()%></td>

                <td><a href="detallesMaestro?idMaestro=<%= li.getIdMaestro()%>">Detalles</a></td>

            </tr>
            <% }

                } catch (Exception e) {
                    System.out.print(e);
                }
            %>
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
     
        h1{
            text-align: center;
            font-size: 1.8rem
        }
        .tabla{
            border: 1px solid #666;
            border-collapse:collapse;
            border-radius: 5px;
            margin: auto;
            box-shadow: 2px 2px 5px #999;
            margin-top: 1rem;
            margin-bottom: 1rem;


        }
        .tabla tbody, td{
            border: 1px solid #666;
            padding: 1rem;

        }
        
        td a{
            font-size: 1.5rem;
        }
    </style>

</body>
</html>
