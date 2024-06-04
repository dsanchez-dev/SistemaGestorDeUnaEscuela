<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <form method="GET" action="${pageContext.request.contextPath}/${param['actionUrl']}">
    <div class="input-group mb-3">
      <input type="text" class="form-control" name="nombre" placeholder="${param['placeholder']}">
      <div class="input-group-append">
        <button class="btn btn-outline-secondary" type="submit">Buscar</button>
        <a href="javascript:history.back()" class="btn btn-secondary">Regresar</a>
      </div>
    </div>
  </form>