<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <c:if test="${not empty message}">
    <div class="alert ${alertClass}" role="alert">
        ${message}
    </div>
  </c:if>