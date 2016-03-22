<%@ include file="../layout/taglib.jsp" %>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Blank page
        <small>it all starts here</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">File Upload Demo</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
	        <c:if test="${param.success eq true}">
	   			<br>
				<div class="alert alert-success alert-dismissible">
	                <button class="close" aria-hidden="true" type="button" data-dismiss="alert">x—</button>
	                <h4><i class="icon fa fa-check"></i> Profile Update Successfull!</h4>
	              </div>
			</c:if>
			<c:if test="${param.success eq false}">
				<br>
				<div class="alert alert-danger alert-dismissible">
	                <button class="close" aria-hidden="true" type="button" data-dismiss="alert">x—</button>
	                <h4><i class="icon fa fa-ban"></i> Profile Update Failed!</h4>
	            </div>
			</c:if>
          <form:form commandName="" enctype="multipart/form-data">
				<div class="form-group">
				    <label for="exampleInputFile">Upload Profile Image</label>
				    <input type="file" name="imageFile">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
		  </form:form>
		  
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>