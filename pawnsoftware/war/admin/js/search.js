var append = function (entity) {
	html="";
	switch() {
		case 'customer':
		html= "";
		break;
		<tr><td></td><td></td><td></td><td></td><td></td><td></td><td><a href="../customer/delete">Edit</a> <a href="../customer/delete">Delete</a></td></tr>
		
	}
	

}

var search = function() {
	$("input[name='q']")
	
	$.ajax({
		type: 'GET',
		url: 'customer',
		success: success,
		dataType: 'json'
	});
}