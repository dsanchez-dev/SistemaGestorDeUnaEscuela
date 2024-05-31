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
            <h2 class="mb-0">Formulario de Calificación</h2>
        </div>
        <div class="card-body">
            <form:form modelAttribute="calificacion" action="${pageContext.request.contextPath}/calificaciones/guardar" method="POST" cssClass="was-validated form-inline">
                <form:hidden path="idCalificacion"/>

                <div class="form-group mx-sm-3 mb-2">
                    <form:label path="alumno.idAlumno" cssClass="sr-only">ID del alumno</form:label>
                    <form:input path="alumno.idAlumno" class="form-control" required="true" placeholder="ID del alumno"/>
                </div>
                <div class="form-group mx-sm-3 mb-2">
                    <form:label path="materia.idMateria" cssClass="sr-only">ID de la materia</form:label>
                    <form:input path="materia.idMateria" class="form-control" required="true" placeholder="ID de la materia"/>
                </div>
                <div class="form-group mb-2">
                    <form:label path="calificacion" cssClass="sr-only">Calificación</form:label>
                    <form:input path="calificacion" class="form-control" required="true" placeholder="Calificación"/>
                </div>
                <button type="submit" class="btn btn-primary mb-2">${calificacion.idCalificacion != null ? 'Actualizar' : 'Crear'}</button>
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
