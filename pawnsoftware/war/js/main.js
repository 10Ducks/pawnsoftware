$(document).ready(function() {
	$('.alert').html("");
	$('#saveCustomer').click(customerSaved);
});

var customerSaved = function() {
	var alertMsg = "<div class='alert alert-success'><h4>Success</h4>Successfully Created Customer</div>";
	$('#notification').html(alertMsg);
	$('#notification .alert').fadeOut(1200);
}