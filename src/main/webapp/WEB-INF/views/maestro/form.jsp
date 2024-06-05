<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Maestro</title>
    <jsp:include page="/WEB-INF/views/templates/header.jsp" />
</head>

<body>

    <jsp:include page="/WEB-INF/views/templates/nav.jsp" />

<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h2 class="mb-0">Formulario de Maestro</h2>
        </div>

        <jsp:include page="/WEB-INF/views/templates/form.jsp">
            <jsp:param name="type" value="maestro"/>
            <jsp:param name="modelAttribute" value="maestro"/>
            <jsp:param name="url" value="/maestros/guardar"/>
            <jsp:param name="httpMethod" value="${maestro.idMaestro != null ? 'PUT' : 'POST'}"/>
            <jsp:param name="id" value="${maestro.idMaestro}"/>
            <jsp:param name="label1" value="nombre"/>
            <jsp:param name="placeholder1" value="Nombre del maestro"/>
            <jsp:param name="label2" value="apellido"/>
            <jsp:param name="placeholder2" value="Apellido del maestro"/>
            <jsp:param name="label3" value="materia"/>
            <jsp:param name="placeholder3" value="nombre de la materia"/>
        </jsp:include>

    </div>
</div>

    <jsp:include page="/WEB-INF/views/templates/footer.jsp" />

</body>
</html>
