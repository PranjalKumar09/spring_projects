<%--
  Created by IntelliJ IDEA.
  User: pranjal
  Date: 28/10/24
  Time: 12:59 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Add Employee Page</title>
    <%@include file="../resources/css/css.jsp"%>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Emp Management System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="register">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container p-3">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-header text-center">
                    <h1>Login Page</h1>
                    <c:if test="${not empty msg}">
                        <h5 class="success">${msg}</h5>
                        <c:remove var="msg"/>
                    </c:if>


                    <div class="card-body">
                        <form action="loginUser" , method="POST">
                            <div class="mb-3"><label>Enter Email</label><input type="email" name="email" class="form-control"></div>
                            <div class="mb-3"><label>Enter Password</label><input type="password" name="password" class="form-control"></div>

                             <button type="submit" class="btn btn-primary col-md-12">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
