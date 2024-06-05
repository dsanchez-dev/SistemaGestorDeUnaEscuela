<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="card-body">
    <%--@elvariable id="${param.modelAttribute}" type="alumno"--%>
    <form:form modelAttribute="${param.modelAttribute}" action="${param.url}" method="PUT" cssClass="was-validated form-inline">
        <form:hidden path="idAlumno" value="${param.id}"/>

        <input type="hidden" name="_method" value="${param.httpMethod}">

        <div class="form-group mb-2">
            <form:label path="${param.label1}" cssClass="sr-only">${param.label1}</form:label>
            <form:input path="${param.label1}" class="form-control" required="true" placeholder="${param.placeholder1}"/>
        </div>

        <div class="form-group mb-2">
            <form:label path="${param.label2}" cssClass="sr-only">${param.label2}</form:label>
            <form:input path="${param.label2}" class="form-control" required="true" placeholder="${param.placeholder2}"/>
        </div>

        <div class="form-group mb-2">
            <form:label path="${param.label3}" cssClass="sr-only">${param.label3}</form:label>
            <form:input path="${param.label3}" class="form-control" required="true" placeholder="${param.placeholder3}"/>
        </div>

        <div class="form-group mb-2">
            <form:label path="${param.label4}" cssClass="sr-only">${param.label4}</form:label>
            <form:input path="${param.label4}" class="form-control" required="true" placeholder="${param.placeholder4}"/>
        </div>

        <button type="submit" class="btn btn-primary mb-2">${param.id == null || param.id.isEmpty() ? 'Crear' : 'Actualizar'}</button>
        <a href="javascript:history.back()" class="btn btn-secondary">Regresar</a>
    </form:form>

    <c:if test="${not empty message}">
        <div class="alert ${alertClass}" role="alert">
                ${message}
        </div>
    </c:if>
</div>
