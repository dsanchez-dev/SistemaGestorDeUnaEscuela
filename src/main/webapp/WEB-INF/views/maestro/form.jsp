<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <jsp:include page="/WEB-INF/views/templates/header.jsp" />
</head>

<body>

    <jsp:include page="/WEB-INF/views/templates/nav.jsp" />

<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h2 class="mb-0">Formulario de Maestro</h2>
        </div>
        <div class="card-body">
            <form:form modelAttribute="maestro" action="${pageContext.request.contextPath}/maestros/guardar" method="PUT"  cssClass="was-validated form-inline">
                <form:hidden path="idMaestro"/>
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
                    <form:label path="materia" cssClass="sr-only">edad</form:label>
                    <form:input path="materia" class="form-control" required="true" placeholder="Materia"/>
                </div>
                <button type="submit" class="btn btn-primary mb-2">${maestro.idMaestro != null ? 'Actualizar' : 'Crear'}</button>
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
