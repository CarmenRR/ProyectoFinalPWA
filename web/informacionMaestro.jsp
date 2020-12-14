<%-- 
    Author     : María del Carmen Reyes Rocha
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Carrera"%>
<%@page import="modelo.Maestro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css"/> 
        <title>Información</title>
    </head>
    <body>

        <% // Maestro maestro= new Maestro();

            // String idMaestro= request.getParameter("idMaestro");
            // Maestro ma =maestro.detallesMaestro(idMaestro);
            //Traer los datos del maestro
            Maestro ma = (Maestro) request.getAttribute("maestro");
            //Traer las carreras
            ArrayList<Carrera> listaCarreras = Carrera.Carreras();

        %>


      
        <form action="asignarCarrera" method="POST">
             <h2> Información de Maestro </h2>
            Id maestro : <input  readonly="readonly"  type="text" name="id" value="<%= ma.getIdMaestro()%>"><br>
            Nombre maestro : <input  readonly="readonly" type="text"  value="<%= ma.getNombreMaestro()%>"><br>
            Correo: <input type="text"  readonly="readonly"  value="<%= ma.getCorreo()%>"><br>
            Teléfono: <input type="text"  readonly="readonly" value="<%= ma.getTelefono()%>"><br>
            Departamento: <input type="text"  readonly="readonly" value="<%= ma.getDepartamento()%>"><br>


            <h2> Asignar Carrera </h2>
            <select name="carrera">

                <option value="0"> SELECCIONE CARRERA </option>
                <% try {
                        for (Carrera li : listaCarreras) {%>
                <option name="idCarrera" value="<%= li.getIdCarrera()%>"><%= li.getNombreCarrera()%></option>

                <% }
                    } catch (Exception e) {
                        System.out.println(e);
                    }%>

            </select>
            <input class="boton" type="submit" name="asignar"value="Aceptar">

        </form>

    </body>

    <style>
        body{
            background-color: #AFDE9E;
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
            width: 15rem;
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

    </style>
</html>
