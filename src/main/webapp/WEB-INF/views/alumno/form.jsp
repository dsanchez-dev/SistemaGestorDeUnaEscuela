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
      <form:form modelAttribute="alumno" action="${pageContext.request.contextPath}/alumnos/guardar" method="PUT"  cssClass="was-validated form-inline">
        <form:hidden path="idAlumno"/>
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
          <form:label path="edad" cssClass="sr-only">edad</form:label>
          <form:input path="edad" class="form-control" required="true" placeholder="Edad"/>
        </div>
        <div class="form-group mx-sm-3 mb-2">
          <form:label path="grado" cssClass="sr-only">grado</form:label>
          <form:input path="grado" class="form-control" required="true" placeholder="Grado"/>
        </div>
        <button type="submit" class="btn btn-primary mb-2">${alumno.idAlumno != null ? 'Actualizar' : 'Crear'}</button>
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
</html >