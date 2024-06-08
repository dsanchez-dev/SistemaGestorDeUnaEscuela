<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">d>
        <title>Calificación</title>
        <jsp:include page="/WEB-INF/views/templates/header.jsp" />
    </head>

    <body>

        <jsp:include page="/WEB-INF/views/templates/nav.jsp" />

    <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                <h2 class="mb-0">Formulario de Calificación</h2>
            </div>
            <jsp:include page="/WEB-INF/views/templates/form.jsp">
                <jsp:param name="type" value="calificacion"/>
                <jsp:param name="modelAttribute" value="calificacion"/>
                <jsp:param name="url" value="/calificaciones/guardar"/>
                <jsp:param name="httpMethod" value="${calificacion.idCalificacion != null ? 'POST' : 'PUTT'}"/>
                <jsp:param name="id" value="${calificacion.idCalificacion}"/>
                <jsp:param name="label1" value="alumno.idAlumno"/>
                <jsp:param name="placeholder1" value="ID del alumno"/>
                <jsp:param name="label2" value="materia.idMateria"/>
                <jsp:param name="placeholder2" value="ID de la materia"/>
                <jsp:param name="label3" value="calificacion"/>
                <jsp:param name="placeholder3" value="Calificación"/>
            </jsp:include>
        </div>
    </div>
        <jsp:include page="/WEB-INF/views/templates/footer.jsp" />
    </body>
</html>
