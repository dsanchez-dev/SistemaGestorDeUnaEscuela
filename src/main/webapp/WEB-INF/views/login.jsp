<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <jsp:include page="/WEB-INF/views/templates/header.jsp" />
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-info fixed-top">
    <a class="navbar-brand" href="#">Instituto Leonarda Gómez Blanco</a>
</nav>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card mt-5">
                <div class="card-body">
                    <h2 class="text-center">Login</h2>
                    <form method="post" action="/login" class="mt-4">
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input type="text" id="username" name="username" class="form-control" required/>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" id="password" name="password" class="form-control" required autocomplete="off"/>
                        </div>
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-primary">Iniciar sesión </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/templates/footer.jsp" />

</body>
</html>
