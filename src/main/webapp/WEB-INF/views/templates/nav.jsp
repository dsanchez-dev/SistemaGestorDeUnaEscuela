<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-info navbar-toggler">
  <div class="container">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/inicio">Instituto Leonarda Gómez Blanco</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">

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
        <li class="nav-item">
            <a class="nav-link"  href="${pageContext.request.contextPath}/logout">Cerrar sesión</a>
        </li>
      </ul>
    </div>
  </div>
</nav>