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
        <tr>
            <th>ID</th>
            <th>Nombre de la materia</th>
            <th>Maestro</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="materia" items="${materias}">
            <tr>
                <td>${materia.idMateria}</td>
                <td>${materia.nombre}</td>
                <td>${materia.maestro.nombre}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/materias/${materia.idMateria}" class="btn btn-primary">Actualizar</a>
                    <form method="GET" action="${pageContext.request.contextPath}/materias/${materia.idMateria}">
                    </form>
                    <form method="POST" action="${pageContext.request.contextPath}/materias/${materia.idMateria}">
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