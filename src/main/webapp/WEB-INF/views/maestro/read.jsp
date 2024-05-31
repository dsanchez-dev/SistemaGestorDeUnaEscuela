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
        <tr>
            <th>ID</th>
            <th colspan="2">Nombre del Maestro</th>
            <th>Materia</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="maestro" items="${maestros}">
            <tr>
                <td>${maestro.idMaestro}</td>
                <td>${maestro.nombre}</td>
                <td>${maestro.apellido}</td>
                <td>${maestro.materia}</td>
                <td>
                    <jsp:include page="/WEB-INF/views/templates/updatedeletebuttons.jsp">
                        <jsp:param name="url" value="maestros" />
                        <jsp:param name="id" value="${maestro.idMaestro}" />
                    </jsp:include>
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