<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="com.emergentes.modelo.Estudiante" %>
<%
    List<Estudiante> estudiantes = (List<Estudiante>) request.getAttribute("estudiantes");
%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRO DÍA DEL INTERNET</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f8f4ff;
                color: #4b0082;
                margin: 0;
                padding: 20px;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }
            h1 {
                color: #4b0082;
                border-bottom: 2px solid #4b0082;
                padding-bottom: 10px;
            }
            p {
                color: #4b0082;
                font-size: 1.2em;
            }
            a {
                color: #ffffff;
                background-color: #4b0082;
                padding: 10px 20px;
                border-radius: 5px;
                text-decoration: none;
                font-weight: bold;
            }
            a:hover {
                background-color: #6a0dad;
            }
            table {
                width: 100%;
                max-width: 1000px;
                border-collapse: collapse;
                margin-top: 20px;
                background-color: #ffffff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            th, td {
                border: 1px solid #dcdcdc;
                padding: 15px;
                text-align: left;
            }
            th {
                background-color: #e6e0f8;
                color: #4b0082;
                text-transform: uppercase;
            }
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            tr:hover {
                background-color: #f1e1ff;
            }
            input[type="checkbox"] {
                transform: scale(1.2);
            }
            .actions a {
                color: #4b0082;
                background-color: #e6e0f8;
                padding: 5px 10px;
                border-radius: 5px;
                text-decoration: none;
            }
            .actions a:hover {
                background-color: #d1c4e9;
            }
        </style>
    </head>
    <body>
        <p>
            SEGUNDO PARCIAL EMERGENTES 2<br> 
            Nombre: Marlene Quispe Villalobos <br>
            CI: 13298442 LP
        </p>
        <h1>REGISTRO DEL DÍA DEL INTERNET</h1>
        <p><a href="EstudianteController?action=add">Nuevo</a></p>
        <table>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Seminario</th>
                <th>Confirmado</th>
                <th>Fecha Inscripcion</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${estudiantes}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.nombre}</td>
                    <td>${item.apellidos}</td>
                    <td>${item.seminario}</td>
                    <td>
                        <input type="checkbox" disabled="disabled" ${item.confirmado ? 'checked' : ''} />
                    </td>
                    <td>${item.fecha_inscripcion}</td>
                    <td class="actions"><a href="EstudianteController?action=edit&id=${item.id}">Editar</a></td>
                    <td class="actions"><a href="EstudianteController?action=delete&id=${item.id}">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
