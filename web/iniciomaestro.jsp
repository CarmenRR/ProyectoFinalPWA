<%-- 
    Author     : María del Carmen Reyes Rocha
--%>

<%@page import="modelo.Reporte"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Maestro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            String usuario = "";

            if (session != null) {
                if (session.getAttribute("usuario") != null && session.getAttribute("tipo") != null) {
                    usuario = (String) session.getAttribute("usuario");
                    String tipo = (String) session.getAttribute("tipo");

                    //obtener el nombre
                    String name = maestro.getMaestro(usuario);
                    maestro.setNombreMaestro(name);
                    //obtener el idMaestro

                } else {
                    response.sendRedirect("index.jsp");
                }
            }
            String idMaestro = maestro.idMaestro(usuario);
            maestro.setIdMaestro(idMaestro);

        %>
        <header>
            <div class="contenedor">
                <div class="two">
                    <nav class="navegacion">
                        <a href="#">Inicio</a>
                        <a href="perfil_controlador?idMaestro=<%= maestro.getIdMaestro()%>">Perfil</a>

                    </nav>
                    <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

                </div>

            </div>

        </header>



        
        <h1 class="Verde-5">¡BIENVENIDO <span class="Verde-2"><%= maestro.getNombreMaestro()%></span>!</h1>


        <section class="seccion centrar">
            <p>Instituto Tecnológico de León</p>
            <p>Periodo Agosto-Diciembre 2020</p>

        </section>


        <table class="tabla" Style='border-collapse:collapse' border='1' width='90%'>
            <tr>
                <th scope='col'>Maestro:
                <td> <%= maestro.getNombreMaestro()%> </td>
            <tr>
            <tr>
                <th scope='col'>Clave:</th>
                <td> <%= maestro.getIdMaestro()%> </td>
            <tr>
        </table>

        <%  List<Reporte> lista = Reporte.getReporte(idMaestro); %>

        <table class="tabla" Style='border-collapse:collapse' border='1' width='90%'>
            <thead >
            <th>Clave Grupo</th>
            <th>Clave Materia</th>
            <th>Materia</th>
            <th>Grupo</th>
            <th>Aula</th>
            <th>No. Alumnos</th>
            <th>Carrera</th>
            <th>Semestre</th>
            <th>Lunes</th>
            <th>Martes</th>
            <th>Miercoles</th>
            <th>Jueves</th>
            <th>Viernes</th>
            <th>HT</th>
            <th>HP</th>
            <th>Creditos</th>

        </thead>
        <tbody>
            <% for (Reporte li : lista) {%>
            <tr>
                <td><%= li.getIdGrupo()%></td>
                <td><%= li.getIdMateria()%></td>
                <td><%= li.getNombreMateria()%></td>
                <td><%= li.getGrupo()%></td>
                <td><%= li.getAula()%></td>
                <td><%= li.getNumAlumnos()%></td>
                <td><%= li.getIdCarrera()%></td>
                <td><%= li.getSemestre()%></td>
                <td><%= li.getLunes()%></td>
                <td><%= li.getMartes()%></td>
                <td><%= li.getMiercoles()%></td>
                <td><%= li.getJueves()%></td>
                <td><%= li.getViernes()%></td> 
                <td><%= li.getHt()%></td>
                <td><%= li.getHp()%></td>
                <td><%= li.getCreditos()%></td>

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
        
        p{
            text-align: center;
        }
        h1{
            text-align: center;
        }
        
        .tabla {
            margin: auto;
        }


    </style> 

</body>
</html>
