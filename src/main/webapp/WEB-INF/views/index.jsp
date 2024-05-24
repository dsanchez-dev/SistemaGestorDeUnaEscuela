<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Escuela Primaria</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<body>
<!-- Encabezado -->
<header class="jumbotron text-center">
  <h1>Bienvenidos a la Escuela Primaria</h1>
  <h2>Clave:20DPRO143H.</h2>
</header>

<!-- Barra de navegación -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/inicio">Escuela Primaria</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/inicio">Inicio </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/alumnos">Alumno</a>
      </li>

    </ul>
  </div>
</nav>
<!-- Contenido de la página aquí -->

<!-- Pie de página -->
<footer class="footer mt-auto py-3 bg-light text-center">
  <div class="container">
    <span class="text-muted">© 2023 Escuela Primaria. Todos los derechos reservados.</span>
  </div>
</footer>

<!-- JS de Bootstrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>