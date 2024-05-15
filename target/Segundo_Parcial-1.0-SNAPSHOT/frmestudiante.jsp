<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.emergentes.modelo.Estudiante" %>
<%
    Estudiante est = (Estudiante) request.getAttribute("est");
%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Registro</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f5e6ff; /* Light lilac background */
                color: #b30000;
                margin: 0;
                padding: 20px;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }
            h1 {
                color: #b30000;
                border-bottom: 2px solid #b30000;
                padding-bottom: 10px;
            }
            form {
                background-color: #ffe6e6; /* Light red background */
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                width: 300px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            td {
                padding: 10px;
                vertical-align: middle;
            }
            input[type="text"], input[type="date"] {
                width: calc(100% - 22px);
                padding: 10px;
                border: 1px solid #b30000;
                border-radius: 5px;
                background-color: #fff5f5; /* Light pink background */
                color: #b30000;
            }
            input[type="checkbox"] {
                transform: scale(1.2);
            }
            input[type="submit"] {
                background-color: #b30000;
                color: #ffffff;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
                font-weight: bold;
                width: 100%;
            }
            input[type="submit"]:hover {
                background-color: #e60000;
            }
            /* Additional styles for lilac accents */
            .form-title {
                background-color: #e6ccff; /* Light lilac background for title */
                padding: 10px;
                border-radius: 5px;
                text-align: center;
                margin-bottom: 20px;
            }
            form {
                border: 2px solid #e6ccff; /* Light lilac border */
            }
        </style>
    </head>
    <body>
        <div class="form-title">
            <h1>Nuevo Registro</h1>
        </div>
        <form action="EstudianteController" method="post">
            <input type="hidden" name="id" value="${est.id}" />
            <table>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="${est.nombre}" /></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="${est.apellidos}" /></td>
                </tr>
                <tr>
                    <td>Seminario</td>
                    <td><input type="text" name="seminario" value="${est.seminario}" /></td>
                </tr>
                <tr>
                    <td>Confirmado</td>
                    <td>
                        <input type="checkbox" name="confirmado" ${est.confirmado ? 'checked' : ''} />
                    </td>
                </tr>
                <tr>
                    <td>Fecha Inscripcion</td>
                    <td><input type="date" name="fecha_inscripcion" value="${est.fecha_inscripcion}" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Guardar" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>