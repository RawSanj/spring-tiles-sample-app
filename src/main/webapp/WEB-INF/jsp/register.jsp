<%@ include file="../layout/taglib.jsp" %>

<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="../../index2.html"><b>Admin</b>LTE</a>
         <c:if test="${param.success eq false}">
   			<br>
			<div class="alert alert-danger alert-dismissible">
                <button class="close" aria-hidden="true" type="button" data-dismiss="alert">×</button>
                <h4>
                	<i class="icon fa fa-ban"></i> Registration Failed.<br>
                	<h5>Standard Id does not exists!</h5>
                </h4>
            </div>
		</c:if>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Register a new membership</p>

    <form:form commandName="user" cssClass="registrationForm">
      <div class="form-group has-feedback">
      	<form:input path="name" type="text" cssClass="form-control" placeholder="Standard Id" required="" />
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
        <form:errors path="name" cssClass="has_error" element="div"/>
      </div>
      <div class="form-group has-feedback">
        <form:password path="password" cssClass="form-control" placeholder="Password" id="password" required="" />
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        <form:errors path="password" cssClass="has_error" element="div"/>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Retype password">
        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> I agree to the <a href="#">terms</a>
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
        </div>
        <!-- /.col -->
      </div>
    </form:form>


    <a href="<spring:url value='/login' />" class="text-center">I already have a membership</a>
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->

