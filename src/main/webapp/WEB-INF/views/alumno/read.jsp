<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Alumnos</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/inicio">Escuela Primaria</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/alumnos">Alumno</a>
            </li>
        </ul>
    </div>
</nav>
<div class="container mt-5">
    <br>
    <h1 class="mb-4">Lista de Alumnos</h1>

    <form method="GET" action="${pageContext.request.contextPath}/alumnos/new">
        <button type="submit" class="btn btn-success mb-3">Agregar Nuevo Alumno</button>
    </form>
    <table class="table table-bordered">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th colspan="2">Nombre del alumno</th>
            <th>Edad</th>
            <th>Grado</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="alumno" items="${alumnos}">
            <tr>
                <td>${alumno.idAlumno}</td>
                <td>${alumno.nombre}</td>
                <td>${alumno.apellido}</td>
                <td>${alumno.edad}</td>
                <td>${alumno.grado}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/alumnos/${alumno.idAlumno}" class="btn btn-info">Actualizar</a>
                    <form method="GET" action="${pageContext.request.contextPath}/alumnos/${alumno.idAlumno}">
                    </form>
                    <form method="POST" action="${pageContext.request.contextPath}/alumnos/${alumno.idAlumno}">
                        <input type="hidden" name="_method" value="DELETE">
                        <button type="submit" class="btn btn-danger">Eliminar</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<footer class="footer mt-auto py-3 bg-dark text-white">
    <div class="container text-center">
        <span>&copy; 2023 Escuela Primaria. Todos los derechos reservados.</span>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>