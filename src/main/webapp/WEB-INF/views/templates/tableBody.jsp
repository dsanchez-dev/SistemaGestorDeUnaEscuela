<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<tr>
    <c:choose>
        <c:when test="${param.type == 'alumno'}">
            <th>${param.id}</th>
            <th colspan="2">${param.name} ${param.apellido}</th>
            <th>${param.age}</th>
            <th>${param.grade}</th>
                <th>
                    <jsp:include page="/WEB-INF/views/templates/updatedeletebuttons.jsp">
                        <jsp:param name="url" value="${param.url}" />
                        <jsp:param name="idUpdate" value="${param.idUpdate}" />
                        <jsp:param name="idDelete" value="${param.idDelete}" />
                    </jsp:include>
                </th>
        </c:when>
        <c:when test="${param.type == 'maestro'}">
            <th>${param.id}</th>
            <th colspan="2">${param.name} ${param.apellido}</th>
            <th>${param.materia}</th>
                <th>
                    <jsp:include page="/WEB-INF/views/templates/updatedeletebuttons.jsp">
                        <jsp:param name="url" value="${param.url}" />
                        <jsp:param name="idUpdate" value="${param.idUpdate}" />
                        <jsp:param name="idDelete" value="${param.idDelete}" />
                    </jsp:include>
                </th>
        </c:when>
    </c:choose>
</tr>