<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp" %>

<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>Admin</b>LTE</a><br>
   		<c:if test="${param.success eq true}">
   			<br>
			<div class="alert alert-success alert-dismissible">
                <button class="close" aria-hidden="true" type="button" data-dismiss="alert">×</button>
                <h4><i class="icon fa fa-check"></i> Registration Successfull!</h4>
              </div>
		</c:if>
		<c:if test="${param.success eq false}">
			<br>
			<div class="alert alert-danger alert-dismissible">
                <button class="close" aria-hidden="true" type="button" data-dismiss="alert">×</button>
                <h4><i class="icon fa fa-ban"></i> Login Failed!</h4>
            </div>
		</c:if>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
			
    <p class="login-box-msg">Sign in to start your session</p>

    <form class="" role="form" action="<spring:url value='/j_spring_security_check' />" method="POST">
      <div class="form-group has-feedback">
        <input type="text" name="j_username" class="form-control" id="userId" placeholder="User Id" required="" autofocus>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password"  name="j_password"  class="form-control" id="password" placeholder="Password" required="" />
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> Remember Me
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

    <a href="#">I forgot my password</a><br>
    <a href="<spring:url value='/register' />" class="text-center"> Register a new membership </a>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
