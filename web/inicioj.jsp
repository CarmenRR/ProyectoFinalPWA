<%-- 
    Author     : María del Carmen Reyes Rocha
--%>

<%@page import="modelo.Carrera"%>
<%@page import="java.util.ArrayList"%>
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
        <% Maestro maestro = new Maestro();
            String tipo = "", usuario = "";
            if (session != null) {
                if (session.getAttribute("usuario") != null && session.getAttribute("tipo") != null) {
                    usuario = (String) session.getAttribute("usuario");
                    tipo = (String) session.getAttribute("tipo");

                    //obtener el nombre
                    String name = maestro.getMaestro(usuario);

                    maestro.setNombreMaestro(name);

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
                        <a href="jefe_controlador">Inicio</a>
                        <a href="perfilm_controlador?idMaestro=<%= maestro.getIdMaestro()%>">Perfil</a>



                    </nav>
                         <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

                </div>
               
            </div>

        </header>


        <h1 class="Verde-5">¡BIENVENIDO <span class="Verde-2"><%= maestro.getNombreMaestro()%></span>!</h1>

        <% ArrayList<Carrera> lista = (ArrayList<Carrera>) request.getAttribute("misCarreras");%>


        <table class="tabla">
            <thead>
            <th>Id Carrera</th>
            <th>Carrera</th>
            <th></th>
            <th>Acciones</th>}
            <th></th>
            <th></th>
            </thead>
        <tbody>
            <% for (Carrera li : lista) {%>
            <tr>
                <td><%= li.getIdCarrera()%></td>
                <td><%= li.getNombreCarrera()%></td>

                <td><a href="crearMateria.jsp?idCarrera=<%= li.getIdCarrera()%>">Agregar Materias</a></td>
                <td><a href="verMaterias_controlador?idCarrera=<%= li.getIdCarrera()%>">Listado materias</a></td>
                <td><a href="carreraMaestro_controlador?idCarrera=<%= li.getIdCarrera()%>">Reportes</a></td>
                <td><a href="verGrupos_controlador?idCarrera=<%= li.getIdCarrera()%>">Grupos</a></td>

            </tr>
            <%}%>
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
            font-size: 3rem;
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
        .tabla tbody{
            border: 1px solid #666;
            padding: 1rem;

        }

        td a{
            font-size: 1.5rem;
        }
    </style> 
</body>
</html>
