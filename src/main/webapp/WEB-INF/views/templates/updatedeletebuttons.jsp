<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
    <a href="${pageContext.request.contextPath}/${param['url']}/${param['id']}" class="btn btn-primary">Actualizar</a>
    <form method="POST" action="${pageContext.request.contextPath}/${param['url']}/${param['id']}">
        <input type="hidden" name="_method" value="DELETE">
        <button type="submit" class="btn btn-danger">Eliminar</button>
    </form>
</body>
</html>