<%-- 
    Author     : María del Carmen Reyes Rocha
--%>

<%@page import="modelo.Maestro"%>
<%@page import="modelo.Reporte"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css"/> 

        <title>Reporte</title>
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


        <% ArrayList<Reporte> lista = (ArrayList<Reporte>) request.getAttribute("reporte");  %>
        <h1>Reporte</h1>

        <table class="tabla" width='90%'>
            <thead>
            <th>Clave Grupo</th>
            <th>Clave Materia</th>
            <th>Materia</th>
            <th class="verti">Grupo </th>
            <th class="verti">Aula </th>
            <th class="verti">No. Alumnos</th>
            <th>Carrera</th>
            <th>Semestre</th>
            <th>Lunes</th>
            <th>Martes</th>
            <th>Miercoles</th>
            <th>Jueves</th>
            <th>Viernes</th>
            <th class="verti">HT</th>
            <th class="verti">HP</th>
            <th class="verti">Creditos</th>

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
        
        th, td{
            border: 1px solid #666;
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
