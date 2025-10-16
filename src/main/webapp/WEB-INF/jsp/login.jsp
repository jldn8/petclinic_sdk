<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<petclinic:layout pageName="login">

    <h2>LOG IN</h2>

    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form action="<spring:url value='/login'/>" method="post" class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-sm-3" for="username">ID</label>
                    <div class="col-sm-9">
                        <input type="text" id="username" name="username" class="form-control" required/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3" for="password">PASSWORD</label>
                    <div class="col-sm-9">
                        <input type="password" id="password" name="password" class="form-control" required/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <button type="submit" class="btn btn-primary">LOG IN</button>
                    </div>
                </div>

                <c:if test="${not empty error}">
                    <div class="alert alert-danger" role="alert">${error}</div>
                </c:if>
            </form>
        </div>
    </div>

</petclinic:layout>

