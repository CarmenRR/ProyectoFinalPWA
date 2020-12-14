<%-- 
    Author     : María del Carmen Reyes Rocha
--%>

<%@page import="modelo.Maestro"%>
<%@page import="modelo.Grupo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css"/> 

        <title>Grupos</title>
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


        <% ArrayList<Grupo> lista = (ArrayList<Grupo>) request.getAttribute("grupos");  %>
        <h1>Grupos</h1>

        <table class="tabla" width='90%'>
            <thead>
            <th>Clave Grupo</th>
            <th>Clave Materia</th>
            <th>Clave Carrera</th>
            <th>Materia</th>
            <th>Carrera</th>
            <th>Maestro</th>
            <th>Periodo</th>
            <th>Turno</th>
            <th>Grupo</th>
            <th>No. Alumnos</th>
            <th>Semestre</th>
            <th>Creditos</th>
            <th>Aula</th>
            <th>Lunes</th>
            <th>Martes</th>
            <th>Miercoles</th>
            <th>Jueves</th>
            <th>Viernes</th>


        </thead>
        <tbody>
            <% for (Grupo li : lista) {%>
            <tr>
                <td><%= li.getIdGrupo()%></td>
                <td><%= li.getIdMateria()%></td>
                <td><%= li.getIdCarrera()%></td>
                <td><%= li.getNombreMateria()%></td>
                <td><%= li.getCarrera()%></td>
                <td><%= li.getMaestro()%></td>
                <td><%= li.getPeriodo()%></td>
                <td><%= li.getTurno()%></td>
                <td><%= li.getGrupo()%></td>
                <td><%= li.getNumAlumnos()%></td>
                <td><%= li.getSemestre()%></td>
                <td><%= li.getCreditos()%></td>
                <td><%= li.getAula()%></td>
                <td><%= li.getLunes()%></td>
                <td><%= li.getMartes()%></td>
                <td><%= li.getMiercoles()%></td>
                <td><%= li.getJueves()%></td>
                <td><%= li.getViernes()%></td> 
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
            margin-bottom: 2rem;
           


        }
        .tabla tbody{
            border: 1px solid #666;
            padding: 1rem;
            font-size: 1rem;

        }
        td, th{
             border: 1px solid #666;
        }

        h1{
            text-align: center;
        }

    </style>
</body>
</html>
