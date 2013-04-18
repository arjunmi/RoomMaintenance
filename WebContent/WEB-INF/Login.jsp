<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script type="text/javascript">

function submitLoginDetails()
{
	userName = jQuery('#username').val();
	password = jQuery('#password').val();
	dataString = 'userName='+userName+"&password="+password;
	
	//Invoke the servlet using ajax
	$.ajax({  
		  type: "POST",  
		  url: "LoginServlet",  
		  data: dataString,  
		  success: function(data) {
			  if(data.Valid == 'true')
			   {
				  alert('sucess');
				}
			  else
			{
				  alert('fail');
			}

		  }, 
		error: function() {
		  alert('failure');
	  }  
		});  
	
	return false;
}

</script>




<div id="example" class="modal hide fade in" style="display: none;">
<form action="LoginServlet" method="POST" id="form">

<div class="modal-header">
		<a class="close" data-dismiss="modal">×</a>
		<h3>Login to Room Maintenance</h3>
	</div>
	<div class="modal-body">
		<div class="container-login">
		
		<span class ="error">Error has occured</span>
		
			<div class="row">
				<div class="span2">
					<h4>User Name :</h4>
				</div>
				<div class="span2">
					<p>
						<input autocapitalize="off" autocomplete="on" autocorrect="off"
							class="overlayable" id="username" name="username"
							title="Username or email" type="text" />
					</p>
				</div>
			</div>
			<div class="row">
				<div class="span2">
					<h4>Password :</h4>
				</div>
				<div class="span2">
					<p>
						<input autocapitalize="off" autocomplete="on" autocorrect="off"
							class="overlayable" id="password" name="password"
							title="Password" type="password" />
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="modal-footer">
		<input type="button" value="Login" class="btn btn-success" onclick='submitLoginDetails();'/>
		<a href="#" class="btn" data-dismiss="modal">Cancel</a>
	</div>

</form>

</div>
