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

        <c:when test="${param.type == 'padre'}">
            <th>${param.id}</th>
            <th colspan="2">${param.name} ${param.apellido}</th>
            <th>${param.telefono}</th>
            <th>${param.direccion}</th>
                <th>
                    <jsp:include page="/WEB-INF/views/templates/updatedeletebuttons.jsp">
                        <jsp:param name="url" value="${param.url}" />
                        <jsp:param name="idUpdate" value="${param.idUpdate}" />
                        <jsp:param name="idDelete" value="${param.idDelete}" />
                    </jsp:include>
                </th>
        </c:when>

        <c:when test="${param.type == 'materia'}">
            <th>${param.id}</th>
            <th colspan="2">${param.name}</th>
            <th>${param.maestro}</th>
                <th>
                    <jsp:include page="/WEB-INF/views/templates/updatedeletebuttons.jsp">
                        <jsp:param name="url" value="${param.url}" />
                        <jsp:param name="idUpdate" value="${param.idUpdate}" />
                        <jsp:param name="idDelete" value="${param.idDelete}" />
                    </jsp:include>
                </th>
        </c:when>

        <c:when test="${param.type =='calificacion'}">
            <th>${param.id}</th>
            <th>${param.name}</th>
            <th>${param.materia}</th>
            <th>${param.calificacion}</th>
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