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
            <jsp:include page="/WEB-INF/views/templates/tableHeader.jsp">
                <jsp:param name="type" value="calificacion" />
            </jsp:include>
            </thead>
            <tbody>
            <c:forEach var="calificacion" items="${calificaciones}">
                <jsp:include page="/WEB-INF/views/templates/tableBody.jsp">
                    <jsp:param name="type" value="calificacion" />
                    <jsp:param name="id" value="${calificacion.idCalificacion}" />
                    <jsp:param name="name" value="${calificacion.alumno.nombre}" />
                    <jsp:param name="materia" value="${calificacion.materia.nombre}" />
                    <jsp:param name="calificacion" value="${calificacion.calificacion}" />
                    <jsp:param name="url" value="calificaciones" />
                    <jsp:param name="idUpdate" value="${calificacion.idCalificacion}" />
                    <jsp:param name="idDelete" value="${calificacion.idCalificacion}" />
                </jsp:include>
            </c:forEach>
            </tbody>
            <jsp:include page="/WEB-INF/views/templates/tableFooter.jsp" />
        </table>
</div>
    <jsp:include page="/WEB-INF/views/templates/footer.jsp" />
</body>
</html>