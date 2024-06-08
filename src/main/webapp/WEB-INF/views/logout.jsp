<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Logout</title>
    <jsp:include page="/WEB-INF/views/templates/header.jsp" />
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-info fixed-top">
    <a class="navbar-brand" href="#">Instituto Leonarda Gómez Blanco</a>
</nav>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <br>
            <h2 class="text-center mt-5">Logout</h2>
            <p class="text-center mt-4">Has cerrado sesión correctamente.</p>
            <div class="form-group">
                <a href="/login" class="btn btn-primary">Iniciar sesión de nuevo</a>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/templates/footer.jsp" />

</body>
</html>