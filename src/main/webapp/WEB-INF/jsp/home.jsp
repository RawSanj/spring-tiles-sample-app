<%@ include file="../layout/taglib.jsp" %>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Twitter Stream
        <small>streaming Live #Hashtags and Location</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Twitter Stream</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">
          	<a href="https://github.com/RawSanj/Spring-Twitter-Stream.git">Fork this Project on GitHub.</a>
          </h3>
        </div>
        <div class="box-body" id="twitter">
	        
		  <iframe src="https://twitter-stream-cloud.herokuapp.com/" height="100%" width="100%">
		    <p>Your browser does not support iframes.</p>
		  </iframe>
		  
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          <h4>
          	Spring Boot - Spring Social Twitter - D3.Js webapp for Streaming Live #HashTags and source location of Tweets.
          </h4>
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
	
	var width = $("body").width() - 360;
	var height = $("body").height() + 100;
		
	$("#twitter").width(width).height(height);	
	
});

</script>