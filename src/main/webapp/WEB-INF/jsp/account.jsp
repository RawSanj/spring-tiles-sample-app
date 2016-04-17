<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        AJAX Calls
        <small>Some Ajax Stuff here....</small>
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
          <h3 class="box-title">Ajax Section</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
          <label for="exampleInputFile">Upload Profile Image</label>
		  <input type="file" name="file" id="fileLoader" /> <br>
		  <input type="button" class="btn btn-success" id="fileSubmit" value="Upload"/>
		  <br><hr>
		  <input type="button" class="btn btn-danger" id="getStudent" value="Get Student"/>
		  <br><br>
		  
		  <div class="box box-widget widget-user" id="setStudent">
            <div class="widget-user-header bg-yellow text-center">
              <h2 class="widget-user-username"></h2><br>
              <h4 class="widget-user-desc"></h4>
            </div>
          </div>
          
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

$( document ).ready(function() {
    
	$("#setStudent").hide();
	
	console.log($("#setStudent"));

	var files = [];
	
	$(document).on("change", "#fileLoader", function(event) {
     files=event.target.files;
    })

	$(document).on("click", "#fileSubmit", function() {
     	processUpload();
    })

	function processUpload(){
		
		alert("Starting Upload....");
    	   
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
	
	$(document).on("click", "#getStudent", function() {
		getNewStudent();
    })
	
	function getNewStudent(){
		$.ajax({ 
			url: '/account/ajaxreturn/', 
			type: 'POST', 
			success: function(data){ 
				console.log(data);
				$("#setStudent .widget-user-username").append(data.firstName+" "+data.lastName);
				$("#setStudent .widget-user-desc").append("Studying : "+ data.course);
				$("#setStudent").show();
			},
			error : function(result){
	    	   alert("Getting Student Failed");
	       	}
		});
     }	
	
});

</script>