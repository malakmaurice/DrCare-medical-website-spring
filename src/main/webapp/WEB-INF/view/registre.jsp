<%--
  Created by IntelliJ IDEA.
  User: malak_000
  Date: 2/16/2022
  Time: 3:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/reg.css"/>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="signup-form">

    <form:form action="registre" method="POST" modelAttribute="user">
        <h2>Register</h2>
        <p class="hint-text">Create your account. It's free and only takes a minute.</p>
        <div class="row"><form:errors path="firstName" class="alert alert-danger col-xs-offset-1 col-xs-10"/></div>
        <div class="row">  <form:errors path="lastName" class="alert alert-danger col-xs-offset-1 col-xs-10"/></div>
        <div class="row"> <form:errors path="email" class="alert alert-danger col-xs-offset-1 col-xs-10"/></div>
        <div class="row"> <form:errors path="pass" class="alert alert-danger col-xs-offset-1 col-xs-10"/></div>

        <div class="form-group">
            <div class="row">
                <div class="col"><form:input path="firstName" type="text" class="form-control" name="first_name" placeholder="First Name" /></div>
                <div class="col"><form:input path="lastName" type="text" class="form-control" name="last_name" placeholder="Last Name" /></div>
            </div>
        </div>
        <div class="form-group">
            <form:input path="email" type="email" class="form-control" name="email" placeholder="Email" />
        </div>
        <div class="form-group">
            <form:input path="pass" type="password" class="form-control" name="password" placeholder="Password" />
        </div>
        <div class="form-group">
            <form:input path="passConfirm" type="password" class="form-control" name="confirm_password" placeholder="Confirm Password" />
        </div>
        <div class="form-group">
            <label class="form-check-label"><input type="checkbox" > I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
        </div>
        <div class="form-group">
            <input type="submit" value="Register Now" class="btn btn-success btn-lg btn-block">
        </div>
    </form:form>
    <div class="text-center">Already have an account? <a href="#">Sign in</a></div>
</div>
</body>
</html>