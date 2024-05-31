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
    <h1 class="mb-4">Lista de Padres de familia</h1>

    <jsp:include page="/WEB-INF/views/templates/search.jsp">
        <jsp:param name="actionUrl" value="padres/buscar" />
        <jsp:param name="placeholder" value="Buscar padre de familia..." />
    </jsp:include>

    <jsp:include page="/WEB-INF/views/templates/addnewbutton.jsp">
        <jsp:param name="newUrl" value="padres/new" />
        <jsp:param name="buttonText" value="Agregar nuevo padre de familia" />
    </jsp:include>

    <table class="table table-bordered">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Telefono</th>
            <th>Direccion</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="padre" items="${padres}">
            <tr>
                <td>${padre.idPadre}</td>
                <td>${padre.nombre}</td>
                <td>${padre.apellido}</td>
                <td>${padre.telefono}</td>
                <td>${padre.direccion}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/padres/${padre.idPadre}" class="btn btn-primary">Actualizar</a>
                    <form method="POST" action="${pageContext.request.contextPath}/padres/${padre.idPadre}">
                        <input type="hidden" name="_method" value="DELETE">
                        <button type="submit" class="btn btn-danger">Eliminar</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

    <jsp:include page="/WEB-INF/views/templates/footer.jsp" />

</body>
</html>