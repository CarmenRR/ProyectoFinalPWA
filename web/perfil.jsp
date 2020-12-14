<%-- 
    Author     : María del Carmen Reyes Rocha
--%>

<%@page import="modelo.Maestro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
        <link rel="stylesheet" href="css/estilos.css"/> 

    </head>
    <body>

        <header>
            <div class="contenedor">
                <div class="two">
                    <nav class="navegacion">
                        <a href="iniciomaestro.jsp">Inicio</a>
                        <a href="#">Perfil</a>

                    </nav>
                    <a class="cerrar-sesion" href='login_controlador?cerrar=true'>Cerrar Sesión</a>

                </div>

            </div>

        </header>

        <form class="formulario">
            <h1 class="Verde-5">Datos personales</h1>

            <%//Traer los datos del maestro
                Maestro ma = (Maestro) request.getAttribute("maestro");%>

            Id maestro : <input  readonly="readonly"  type="text" name="id" value="<%= ma.getIdMaestro()%>">
            Nombre maestro : <input  readonly="readonly" type="text"  value="<%= ma.getNombreMaestro()%>">
            Correo: <input type="text"  readonly="readonly"  value="<%= ma.getCorreo()%>">
            Teléfono: <input type="text"  readonly="readonly" value="<%= ma.getTelefono()%>">
            Departamento: <input type="text"  readonly="readonly" value="<%= ma.getDepartamento()%>">

        </form>

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
            form{
                border-radius: 5px;
                background-color: white;
                height: 90%;
                width: 50%;
                margin: auto;
                margin-top: 2rem;
                box-shadow: 2px 2px 10px #666;
                display: flex;
                flex-direction: column;
                align-items: center;
                padding-bottom: 1rem;
            }

            h2{
                font-size: 1.5rem;
            }

            form select{
                margin: auto;
            }
            input{
                border: none;
                border-bottom: 2px solid #369E75;
                width: 20rem;
            }


        </style>




    </body>
</html>
