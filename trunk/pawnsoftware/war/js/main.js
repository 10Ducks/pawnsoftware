var saved = function(entity) {
	var msgAlert = '<div class="alert alert-success"> <h4>Success</h4>The ' + entity + ' has successfully been saved.</div>';
	$('#notification').html(msgAlert);
	$('#notification').fadeOut(2000);
}

var save = function(entity) {
	var data=new Array();
	var formEleList = $('form#'+entity+'-info').serializeArray();
	for(var i=0;i<formEleList.length;i++){
		data[data.length]=new param(formEleList[i].name,formEleList[i].value);
	}
	data[data.length]=new param('action','PUT');
	saved(entity);
	$.ajax({
		url : "/"+entity+"-save",
		type : "POST",
		data:data, 
		complete: function() {
			alert("Success");
		}
	});
}

var param=function(name,value){
	this.name=name;
	this.value=value;
}
