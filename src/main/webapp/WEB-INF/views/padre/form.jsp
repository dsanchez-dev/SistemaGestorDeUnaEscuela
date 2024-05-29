<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Formulario de Alumno</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>