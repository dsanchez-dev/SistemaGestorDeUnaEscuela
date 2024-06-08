<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Lista de Padres de familia</title>
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
                <jsp:include page="/WEB-INF/views/templates/tableHeader.jsp">
                    <jsp:param name="type" value="padre" />
                </jsp:include>
                </thead>
                <tbody>
                <c:forEach var="padre" items="${padres}">
                    <jsp:include page="/WEB-INF/views/templates/tableBody.jsp">
                        <jsp:param name="type" value="padre" />
                        <jsp:param name="id" value="${padre.idPadre}" />
                        <jsp:param name="name" value="${padre.nombre}" />
                        <jsp:param name="apellido" value="${padre.apellido}" />
                        <jsp:param name="telefono" value="${padre.telefono}" />
                        <jsp:param name="direccion" value="${padre.direccion}" />
                        <jsp:param name="url" value="padres" />
                        <jsp:param name="idUpdate" value="${padre.idPadre}" />
                        <jsp:param name="idDelete" value="${padre.idPadre}" />
                    </jsp:include>
                </c:forEach>
                </tbody>
            <jsp:include page="/WEB-INF/views/templates/tableFooter.jsp" />
            </table>
        </div>
            <jsp:include page="/WEB-INF/views/templates/footer.jsp" />
    </body>
</html>