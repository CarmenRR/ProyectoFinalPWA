<%-- 
    Author     : María del Carmen Reyes Rocha
--%>

<%@page import="modelo.Maestro"%>
<%@page import="modelo.Materia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Modificar</title>
    </head>

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

    <body>

        <%  Materia ma = (Materia) request.getAttribute("materia");%>

        <h1>Modificar Materia</h1>

        <form  class="formulario" action="modificarMateria_controlador2" method="post">
            <label> Clave de Materia</label>
            <input type="hidde" name="idMateria" required="" value="<%= ma.getIdMateria()%>"> 
            <label>Nombre Materia</label>
            <input type="text" name="nombreMateria" required="" value="<%= ma.getNombreMateria()%>">

            Semestre:
            <select name="semestre">
                <option selected value="0"> Seleccionar</option>
                <option >1</option> 
                <option >2</option> 
                <option >3</option>
                <option >4</option> 
                <option >5</option> 
                <option >6</option> 
                <option >7</option> 
                <option >8</option> 
                <option >9</option> 
            </select>

            
            Creditos : 
            <select name="creditos">
                <option selected value="0"> Seleccionar</option>
                <option>4</option> 
                <option>5</option> 
                <option>6</option> 
            </select>
            
            Horas teoria:
            <select name="horasTeoria">
                <option selected> Seleccionar</option>
                <option>1</option> 
                <option>2</option> 
                <option>3</option>
                <option>4</option> 
                <option>5</option> 
                <option>6</option> 
            </select>
            
            Horas practica:
            <select name="horasPractica">
                <option selected> Seleccionar</option>
                <option>1</option> 
                <option>2</option> 
                <option>3</option>
                <option>4</option> 
                <option>5</option> 
                <option>6</option> 
            </select>
            

           
            <input type="text" name="idCarrera" readonly value="<%= ma.getIdCarrera()%>">

            <input class="boton" type="submit" value="Modificar">



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
                margin-bottom: 2rem;
                box-shadow: 2px 2px 10px #666;
                display: flex;
                flex-direction: column;
                align-items: center;
                padding-bottom: 1rem;
            }

            .boton{
                background-color: #017D56;
                color: #D4DBF5;
                margin-top: 1rem;
                margin-bottom: 1rem;
                padding: 1rem;
                border: none;
            }
            .boton:hover{
                background-color: #369E75;
            }
            
            h1{
                text-align: center;
            }

            </style>



    </body>
</html>
