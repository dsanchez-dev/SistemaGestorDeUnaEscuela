<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Alumnos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
    <br>
    <h1 class="mb-4">Lista de Padres de familia</h1>

    <form method="GET" action="${pageContext.request.contextPath}/padres/new">
        <button type="submit" class="btn btn-success mb-3">Agregar Nuevo Padre de familia</button>
    </form>
    <table class="table table-bordered">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Telefono</th>
            <th>Direccion</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="padre" items="${padres}">
            <tr>
                <td>${padre.idPadre}</td>
                <td>${padre.nombre}</td>
                <td>${padre.apellido}</td>
                <td>${padre.telefono}</td>
                <td>${padre.direccion}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/padres/${padre.idPadre}" class="btn btn-primary">Actualizar</a>
                    <form method="POST" action="${pageContext.request.contextPath}/padres/${padre.idPadre}">
                        <input type="hidden" name="_method" value="DELETE">
                        <button type="submit" class="btn btn-danger">Eliminar</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
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

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>