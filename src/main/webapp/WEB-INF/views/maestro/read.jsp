<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Lista de Maestros</title>
    <jsp:include page="/WEB-INF/views/templates/header.jsp" />
</head>
<body>
    <jsp:include page="/WEB-INF/views/templates/nav.jsp" />
<div class="container mt-5">
    <br>
    <h1 class="mb-4">Lista de Maestros</h1>

    <jsp:include page="/WEB-INF/views/templates/search.jsp">
        <jsp:param name="actionUrl" value="maestros/buscar" />
        <jsp:param name="placeholder" value="Buscar maestro..." />
    </jsp:include>

    <jsp:include page="/WEB-INF/views/templates/addnewbutton.jsp">
        <jsp:param name="newUrl" value="maestros/new" />
        <jsp:param name="buttonText" value="Agregar nuevo maestro" />
    </jsp:include>

        <table class="table table-bordered">
            <thead class="thead-dark">
            <jsp:include page="/WEB-INF/views/templates/tableHeader.jsp">
                <jsp:param name="type" value="maestro" />
            </jsp:include>
            </thead>
            <tbody>
            <c:forEach var="maestro" items="${maestros}">
                <jsp:include page="/WEB-INF/views/templates/tableBody.jsp">
                    <jsp:param name="type" value="maestro" />
                    <jsp:param name="id" value="${maestro.idMaestro}" />
                    <jsp:param name="name" value="${maestro.nombre}" />
                    <jsp:param name="apellido" value="${maestro.apellido}" />
                    <jsp:param name="materia" value="${maestro.materia}" />
                    <jsp:param name="url" value="maestros" />
                    <jsp:param name="idUpdate" value="${maestro.idMaestro}" />
                    <jsp:param name="idDelete" value="${maestro.idMaestro}" />
                </jsp:include>
            </c:forEach>
            </tbody>
            <jsp:include page="/WEB-INF/views/templates/tableFooter.jsp" />
        </table>
</div>
    <jsp:include page="/WEB-INF/views/templates/footer.jsp" />
</body>
</html>