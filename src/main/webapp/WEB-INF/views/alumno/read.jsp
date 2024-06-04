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
    <h1 class="mb-4">Lista de Alumnos</h1>

        <jsp:include page="/WEB-INF/views/templates/search.jsp">
            <jsp:param name="actionUrl" value="alumnos/buscar" />
            <jsp:param name="placeholder" value="Buscar Alumno..." />
        </jsp:include>

        <jsp:include page="/WEB-INF/views/templates/addnewbutton.jsp">
            <jsp:param name="newUrl" value="alumnos/new" />
            <jsp:param name="buttonText" value="Agregar nuevo alumno" />
        </jsp:include>

    <table class="table table-bordered">
        <thead class="thead-dark">
            <jsp:include page="/WEB-INF/views/templates/tableHeader.jsp">
                <jsp:param name="type" value="alumno" />
            </jsp:include>
        </thead>
        <tbody>
        <c:forEach var="alumno" items="${alumnos}">
            <jsp:include page="/WEB-INF/views/templates/tableBody.jsp">
                <jsp:param name="type" value="alumno" />
                <jsp:param name="id" value="${alumno.idAlumno}" />
                <jsp:param name="name" value="${alumno.nombre}" />
                <jsp:param name="apellido" value="${alumno.apellido}" />
                <jsp:param name="age" value="${alumno.edad}" />
                <jsp:param name="grade" value="${alumno.grado}" />
                <jsp:param name="url" value="alumnos" />
                <jsp:param name="idUpdate" value="${alumno.idAlumno}" />
                <jsp:param name="idDelete" value="${alumno.idAlumno}" />
            </jsp:include>
        </c:forEach>

        </tbody>
            <jsp:include page="/WEB-INF/views/templates/tableFooter.jsp" />
    </table>
</div>

    <jsp:include page="/WEB-INF/views/templates/footer.jsp" />

</body>
</html>