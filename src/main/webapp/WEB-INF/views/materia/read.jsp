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
    <h1 class="mb-4">Lista de Materias</h1>

    <jsp:include page="/WEB-INF/views/templates/search.jsp">
        <jsp:param name="actionUrl" value="materias/buscar" />
        <jsp:param name="placeholder" value="Buscar materia..." />
    </jsp:include>

    <jsp:include page="/WEB-INF/views/templates/addnewbutton.jsp">
        <jsp:param name="newUrl" value="materias/new" />
        <jsp:param name="buttonText" value="Agregar nueva materia" />
    </jsp:include>

    <table class="table table-bordered">
        <thead class="thead-dark">
        <jsp:include page="/WEB-INF/views/templates/tableHeader.jsp">
            <jsp:param name="type" value="materia" />
        </jsp:include>
        </thead>
        <tbody>
        <c:forEach var="materia" items="${materias}">
            <jsp:include page="/WEB-INF/views/templates/tableBody.jsp">
                <jsp:param name="type" value="materia" />
                <jsp:param name="id" value="${materia.idMateria}" />
                <jsp:param name="name" value="${materia.nombre}" />
                <jsp:param name="maestro" value="${materia.maestro.nombre}" />
                <jsp:param name="url" value="materias" />
                <jsp:param name="idUpdate" value="${materia.idMateria}" />
                <jsp:param name="idDelete" value="${materia.idMateria}" />
            </jsp:include>
        </c:forEach>

        </tbody>
        <jsp:include page="/WEB-INF/views/templates/tableFooter.jsp" />
    </table>

</div>

    <jsp:include page="/WEB-INF/views/templates/footer.jsp" />

</body>
</html>