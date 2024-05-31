<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="/WEB-INF/views/templates/header.jsp" />
</head>
<body>

    <jsp:include page="/WEB-INF/views/templates/nav.jsp" />

<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h2 class="mb-0">Formulario de Alumno</h2>
        </div>
        <div class="card-body">
            <form:form modelAttribute="padre" action="${pageContext.request.contextPath}/padres/guardar" method="PUT"  cssClass="was-validated form-inline">
                <form:hidden path="idPadre"/>
                <input type="hidden" name="_method" value="PUT">
                <div class="form-group mb-2">
                    <form:label path="nombre" cssClass="sr-only">nombre</form:label>
                    <form:input path="nombre" class="form-control" required="true" placeholder="Nombre"/>
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <form:label path="apellido" cssClass="sr-only">apellido</form:label>
                    <form:input path="apellido" class="form-control" required="true" placeholder="Apellido"/>
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <form:label path="telefono" cssClass="sr-only">edad</form:label>
                    <form:input path="telefono" class="form-control" required="true" placeholder="Telefono"/>
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <form:label path="direccion" cssClass="sr-only">grado</form:label>
                    <form:input path="direccion" class="form-control" required="true" placeholder="Direccion"/>
                </div>
                <button type="submit" class="btn btn-primary mb-2">${padre.idPadre != null ? 'Actualizar' : 'Crear'}</button>
                <a href="javascript:history.back()" class="btn btn-secondary">Regresar</a>
            </form:form>
            <c:if test="${not empty message}">
                <div class="alert ${alertClass}" role="alert">
                        ${message}
                </div>
            </c:if>
        </div>
    </div>
</div>

    <jsp:include page="/WEB-INF/views/templates/footer.jsp" />

</body>
</html>