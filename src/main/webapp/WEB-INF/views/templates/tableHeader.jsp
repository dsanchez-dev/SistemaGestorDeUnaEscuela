<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <tr>
        <c:choose>

            <c:when test="${param.type == 'alumno'}">
                <th>ID</th>
                <th colspan="2">Nombre del alumno</th>
                <th>Edad</th>
                <th>Grado</th>
                <th>Acciones</th>
            </c:when>

            <c:when test="${param.type == 'maestro'}">
                <th>ID</th>
                <th colspan="2">Nombre del Maestro</th>
                <th>Materia</th>
                <th>Acciones</th>
            </c:when>

            <c:when test="${param.type == 'padre'}">
                <th>ID</th>
                <th colspan="2">Nombre del padre</th>
                <th>Teléfono</th>
                <th>Dirección</th>
                <th>Acciones</th>
            </c:when>

            <c:when test="${param.type == 'materia'}">
                <th>ID</th>
                <th colspan="2">Nombre de la materia</th>
                <th>Maestro</th>
                <th>Acciones</th>
            </c:when>

        </c:choose>

    </tr>
