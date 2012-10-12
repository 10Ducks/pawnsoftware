var search = function() {
	$("input[name='q']")
	
	$.ajax({
		type: 'GET',
		url: 'customer',
		success: success,
		dataType: 'json'
	});
}