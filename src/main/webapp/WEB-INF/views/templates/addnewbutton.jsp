<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <form method="GET" action="${pageContext.request.contextPath}/${param['newUrl']}">
        <button type="submit" class="btn btn-success mb-3">${param['buttonText']}</button>
    </form>