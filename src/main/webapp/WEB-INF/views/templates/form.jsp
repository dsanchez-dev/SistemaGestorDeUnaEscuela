<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="card-body">
        <c:choose >
            <c:when test="${param.type == 'alumno' }">
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

                <jsp:include page="/WEB-INF/views/templates/alerts.jsp" />
            </c:when>

            <c:when test="${param.type == 'maestro' }">
                <%--@elvariable id="${param.modelAttribute}" type="maestro"--%>
                <form:form modelAttribute="${param.modelAttribute}" action="${param.url}" method="PUT" cssClass="was-validated form-inline">
                    <form:hidden path="idMaestro" value="${param.id}"/>

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

                    <button type="submit" class="btn btn-primary mb-2">${param.id == null || param.id.isEmpty() ? 'Crear' : 'Actualizar'}</button>
                    <a href="javascript:history.back()" class="btn btn-secondary">Regresar</a>

                </form:form>

                <jsp:include page="/WEB-INF/views/templates/alerts.jsp" />
            </c:when>

            <c:when test="${param.type == 'padre' }">
                <%--@elvariable id="${param.modelAttribute}" type="padre"--%>
                <form:form modelAttribute="${param.modelAttribute}" action="${param.url}" method="PUT" cssClass="was-validated form-inline">
                    <form:hidden path="idPadre" value="${param.id}"/>

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

                <jsp:include page="/WEB-INF/views/templates/alerts.jsp" />
            </c:when>

            <c:when test="${param.type == 'materia'}">
                <%--@elvariable id="${param.modelAttribute}" type="materia"--%>
                <form:form modelAttribute="${param.modelAttribute}" action="${param.url}" method="PUT" cssClass="was-validated form-inline">
                    <form:hidden path="idMateria" value="${param.id}"/>

                    <div class="form-group mb-2">
                        <form:label path="${param.label1}" cssClass="sr-only">${param.label1}</form:label>
                        <form:input path="${param.label1}" class="form-control" required="true" placeholder="${param.placeholder1}"/>
                    </div>

                    <div class="form-group mb-2">
                        <form:label path="${param.label2}" cssClass="sr-only">${param.label2}</form:label>
                        <form:input path="${param.label2}" class="form-control" required="true" placeholder="${param.placeholder2}"/>
                    </div>

                    <button type="submit" class="btn btn-primary mb-2">${param.id != null ? 'Actualizar' : 'Crear'}</button>
                    <a href="javascript:history.back()" class="btn btn-secondary">Regresar</a>

                </form:form>

                <jsp:include page="/WEB-INF/views/templates/alerts.jsp" />
            </c:when>

            <c:when test="${param.type == 'calificacion'}">
                <%--@elvariable id="${param.modelAttribute}" type="calificacion"--%>
                <form:form modelAttribute="${param.modelAttribute}" action="${param.url}" method="POST" cssClass="was-validated form-inline">
                    <form:hidden path="idCalificacion" value="${param.id}"/>

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

                    <button type="submit" class="btn btn-primary mb-2">${param.id == null || param.id.isEmpty() ? 'Crear' : 'Actualizar'}</button>
                    <a href="javascript:history.back()" class="btn btn-secondary">Regresar</a>

                </form:form>

                <jsp:include page="/WEB-INF/views/templates/alerts.jsp" />
            </c:when>

        </c:choose>
    </div>
