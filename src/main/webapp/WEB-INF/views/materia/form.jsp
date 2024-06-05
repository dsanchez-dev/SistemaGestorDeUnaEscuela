<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Materia</title>
  <jsp:include page="/WEB-INF/views/templates/header.jsp" />
</head>
<body>

  <jsp:include page="/WEB-INF/views/templates/nav.jsp" />

<div class="container mt-5">
  <div class="card">
    <div class="card-header">
      <h2 class="mb-0">Formulario de Materia</h2>
    </div>

    <jsp:include page="/WEB-INF/views/templates/form.jsp">
      <jsp:param name="type" value="materia"/>
      <jsp:param name="modelAttribute" value="materia"/>
      <jsp:param name="url" value="/materias/guardar"/>
      <jsp:param name="httpMethod" value="${materia.idMateria != null ? 'PUT' : 'POST'}"/>
      <jsp:param name="id" value="${materia.idMateria}"/>
      <jsp:param name="label1" value="nombre"/>
      <jsp:param name="placeholder1" value="Nombre de la materia"/>
      <jsp:param name="label2" value="maestro.idMaestro"/>
      <jsp:param name="placeholder2" value="ID del maestro"/>
    </jsp:include>

  </div>
</div>

  <jsp:include page="/WEB-INF/views/templates/footer.jsp" />

</body>
</html>