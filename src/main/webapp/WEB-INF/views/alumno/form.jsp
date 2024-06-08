<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <title>Alumno</title>
  <jsp:include page="/WEB-INF/views/templates/header.jsp" />
</head>
<body>

<jsp:include page="/WEB-INF/views/templates/nav.jsp" />

<div class="container mt-5">
  <div class="card">

    <div class="card-header">
      <h2 class="mb-0">Formulario de Alumno</h2>
    </div>

    <jsp:include page="/WEB-INF/views/templates/form.jsp">
      <jsp:param name="type" value="alumno"/>
      <jsp:param name="modelAttribute" value="alumno"/>
      <jsp:param name="url" value="/alumnos/guardar"/>
      <jsp:param name="httpMethod" value="${alumno.idAlumno != null ? 'PUT' : 'POST'}"/>
      <jsp:param name="id" value="${alumno.idAlumno}"/>
      <jsp:param name="label1" value="nombre"/>
      <jsp:param name="placeholder1" value="Nombre del alumno"/>
      <jsp:param name="label2" value="apellido"/>
      <jsp:param name="placeholder2" value="Apellido del alumno"/>
      <jsp:param name="label3" value="edad"/>
      <jsp:param name="placeholder3" value="Edad del alumno"/>
      <jsp:param name="label4" value="grado"/>
      <jsp:param name="placeholder4" value="Grado del alumno"/>
    </jsp:include>

  </div>
</div>

<jsp:include page="/WEB-INF/views/templates/footer.jsp" />

</body>
</html>
