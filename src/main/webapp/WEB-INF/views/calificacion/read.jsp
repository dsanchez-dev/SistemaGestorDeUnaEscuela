<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/views/templates/header.jsp" />
</head>
<body>

    <jsp:include page="/WEB-INF/views/templates/nav.jsp" />

<div class="container mt-5">
    <br>
    <h1 class="mb-4">Lista de calificaciones</h1>

        <jsp:include page="/WEB-INF/views/templates/search.jsp">
            <jsp:param name="actionUrl" value="calificaciones/buscar" />
            <jsp:param name="placeholder" value="Buscar Alumno..." />
        </jsp:include>

        <jsp:include page="/WEB-INF/views/templates/addnewbutton.jsp">
            <jsp:param name="newUrl" value="calificaciones/new" />
            <jsp:param name="buttonText" value="Agregar nueva calificacion" />
        </jsp:include>

        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <th>ID de la calificación </th>
                <th>Nombre del alumno</th>
                <th>Nombre de la materia</th>
                <th>calificación</th>
                <th>Acciones</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="calificacion" items="${calificaciones}">
                <tr>
                    <td>${calificacion.idCalificacion}</td>
                    <td>${calificacion.alumno.nombre}</td>
                    <td>${calificacion.materia.nombre}</td>
                    <td>${calificacion.calificacion}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/calificaciones/${calificacion.idCalificacion}" class="btn btn-primary">Actualizar</a>
                        <form method="GET" action="${pageContext.request.contextPath}/calificaciones/${calificacion.idCalificacion}">
                        </form>
                        <form method="POST" action="${pageContext.request.contextPath}/calificaciones/${calificacion.idCalificacion}">
                            <input type="hidden" name="_method" value="DELETE">
                            <button type="submit" class="btn btn-danger">Eliminar</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            <c:if test="${not empty message}">
                <div class="alert ${alertClass}" role="alert">
                        ${message}
                </div>
            </c:if>

            </tbody>
        </table>
</div>

    <jsp:include page="/WEB-INF/views/templates/footer.jsp" />

</body>
</html>