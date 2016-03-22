<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Blank page - ${user.firstName}
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
          <h3 class="box-title">Title</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
          Ajax Upload : 
		  <input type="file" name="file" id="fileLoader" /> 
		  <input type="button" id="fileSubmit" value="Upload"/>
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          Footer
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.2/jquery.min.js"></script>
<script type="text/javascript">

var files = [];
	
	$(document).on("change", "#fileLoader", function(event) {
     files=event.target.files;
    })

	$(document).on("click", "#fileSubmit", function() {
     	processUpload();
    })

	function processUpload(){
		
		alert("Starting Upload....");
        /* var oMyForm = new FormData();
        oMyForm.append("imageFile", files[0]);
		$.ajax({dataType : 'json',
		       url : "/account/upload/",
		       data : oMyForm,
		       type : "POST",
		       enctype: 'multipart/form-data',
		       processData: false, 
		       contentType:false,
		       success : function(result) {
		    	   alert("Upload Successful....");
		       },
		       error : function(result){
		    	   alert("Upload Failed - Or Access Denied");
		       }
		   }); */
		   
		var fd = new FormData(); 
		fd.append( 'imageFile', files[0] ); 

		$.ajax({ 
			url: '/account/upload/', 
			data: fd, 
			processData: false, 
			contentType: false, 
			type: 'POST', 
			success: function(data){ 
				alert("Upload Successful....");
			},
			error : function(result){
	    	   alert("Upload Failed - Or Access Denied");
	       	}
		});
     }

</script>