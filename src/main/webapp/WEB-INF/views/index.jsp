<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Instituto Leonarda Gómez Blanco</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <style>
    body {
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }
    header.jumbotron {
      background-color: #e9ecef;
      margin-bottom: 0;
    }
    footer.footer {
      background-color: #e9ecef;
      margin-top: auto;
    }
    .navbar-brand, .nav-link {
      font-weight: bold;
    }
  </style>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary navbar-toggler">
  <div class="container">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/inicio">Instituto Leonarda Gómez Blanco</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="${pageContext.request.contextPath}/inicio">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/alumnos">Alumnos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/maestros">Maestros</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/materias">Materias</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/padres">Padres</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/calificaciones">Calificaciones</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<header class="jumbotron text-center">
  <div class="container">
    <h1 class="display-4"> <b> Escuela primaria Profa. Leonarda Gómez Blanco.</b></h1>
    <p class="lead">Clave: 29DPR0030W.</p>
  </div>
</header>

<main class="container my-5">
  <div class="row">
    <div class="col-lg-8 mx-auto">
      <h2>Sobre Nosotros:</h2>
      <p>El Instituto Leonarda Gómez Blanco de Tlaxcala, Xicohtzinco, es una institución educativa dedicada a la formación integral de nuestros estudiantes, fomentando valores y conocimientos que les permitan desarrollarse plenamente en la sociedad.</p>
      <h2>Nuestros Programas:</h2>
      <p>Ofrecemos una amplia gama de programas educativos desde nivel básico hasta avanzado, con un enfoque en la excelencia académica y el desarrollo personal de cada estudiante.</p>
    </div>
  </div>
</main>

<footer class="footer py-3 text-center">
  <div class="container">
    <span class="text-muted">© 2023 Instituto Leonarda Gómez Blanco. Todos los derechos reservados.</span>
    <span class="text-muted">Dirección: Calle Juan Cuamatzi Cuarta, Xicohtzinco.</span>
    <span class="text-muted">Teléfono: 2222810657.</span>
    <span class="text-muted">Correo:Xicohtzinco, Tlaxcala C.P 90780.</span>
    <span class="text-muted">Ciclo escolar: 2023-2024.</span>
    <span class="text-muted">Turno: Matutino.</span>
    <span class="text-muted">Horario: 7:00 a 15:00 hrs.</span>
    <span class="text-muted">Modalidad: Escolarizada.</span>
    <span class="text-muted">Zona: Urbano.</span>
  </div>
</footer>

<!-- JS de Bootstrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>