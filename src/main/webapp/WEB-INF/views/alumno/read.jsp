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
        <tr>
            <th>ID</th>
            <th colspan="2">Nombre del alumno</th>
            <th>Edad</th>
            <th>Grado</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="alumno" items="${alumnos}">
            <tr>
                <td>${alumno.idAlumno}</td>
                <td>${alumno.nombre}</td>
                <td>${alumno.apellido}</td>
                <td>${alumno.edad}</td>
                <td>${alumno.grado}</td>
                <td>
                    <jsp:include page="/WEB-INF/views/templates/updatedeletebuttons.jsp">
                        <jsp:param name="url" value="alumnos" />
                        <jsp:param name="id" value="${alumno.idAlumno}" />
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