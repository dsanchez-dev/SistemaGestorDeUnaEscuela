<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Padre</title>
    <jsp:include page="/WEB-INF/views/templates/header.jsp" />
</head>
<body>

    <jsp:include page="/WEB-INF/views/templates/nav.jsp" />

<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h2 class="mb-0">Formulario de Padres</h2>
        </div>

        <jsp:include page="/WEB-INF/views/templates/form.jsp">
            <jsp:param name="type" value="padre"/>
            <jsp:param name="modelAttribute" value="padre"/>
            <jsp:param name="url" value="/padres/guardar"/>
            <jsp:param name="httpMethod" value="${padre.idPadre != null ? 'PUT' : 'POST'}"/>
            <jsp:param name="id" value="${padre.idPadre}"/>
            <jsp:param name="label1" value="nombre"/>
            <jsp:param name="placeholder1" value="Nombre "/>
            <jsp:param name="label2" value="apellido"/>
            <jsp:param name="placeholder2" value="Apellido "/>
            <jsp:param name="label3" value="telefono"/>
            <jsp:param name="placeholder3" value="Telefono "/>
            <jsp:param name="label4" value="direccion"/>
            <jsp:param name="placeholder4" value="Domicilio "/>
        </jsp:include>

    </div>
</div>

    <jsp:include page="/WEB-INF/views/templates/footer.jsp" />

</body>
</html>