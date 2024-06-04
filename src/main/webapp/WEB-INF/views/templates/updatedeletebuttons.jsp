<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <a href="${pageContext.request.contextPath}/${param['url']}/${param['idUpdate']}" class="btn btn-primary">Actualizar</a>
    <form method="POST" action="${pageContext.request.contextPath}/${param['url']}/${param['idDelete']}">
        <input type="hidden" name="_method" value="DELETE">
        <button type="submit" class="btn btn-danger">Eliminar</button>
    </form>
