function addUserDetails() {
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	
	$.ajax({
		type : "POST",
		url : "/adduserdetails",
		contentType : "application/json",
		data : JSON.stringify({
			"username" : $('[name="user"]').val(),
			"name" : $('[name="name"]').val(),
			"surname" : $('[name="surname"]').val(),
			"phone" : $('[name="phone"]').val()
		}),
		 success: function (data) {
             formSuccess(data);
         },

		dataType : "json",
		
		async : true,
		    beforeSend: function(xhr) {
		        xhr.setRequestHeader("Accept", "application/json");
		        xhr.setRequestHeader("Content-Type", "application/json");
		        xhr.setRequestHeader(header, token);
		    }
	});
}

function formSuccess(data) {

    $('[name="name"]').attr("placeholder", data.name);
    $('[name="surname"]').attr("placeholder", data.surname);
    $('[name="phone"]').attr("placeholder", data.phone);


	
	$("#formSuccessDiv").empty();
	 document.getElementById("addUserDetails").reset();
	
	$('<div class="alert alert-success" role="alert" >' +
		'Details successfully added!' +
		'</div>').appendTo("#formSuccessDiv");


}


function addUserAddress() {

	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	
	$.ajax({
		type : "POST",
		url : "/adduseraddress",
		contentType : "application/json",
		data : JSON.stringify({
			"username" : $('[name="user"]').val(),
			"line1" : $('[name="line1"]').val(),
			"line2" : $('[name="line2"]').val(),
			"houseNo" : $('[name="houseno"]').val(),
			"city" : $('[name="city"]').val(),
			"county" : $('[name="county"]').val(),
			"postcode" : $('[name="postcode"]').val(),
			"country" : $('[name="country"]').val()
		}),
		success : formSuccessAdd(),
		dataType : "json",
		
		async : true,
		    beforeSend: function(xhr) {
		        xhr.setRequestHeader("Accept", "application/json");
		        xhr.setRequestHeader("Content-Type", "application/json");
		        xhr.setRequestHeader(header, token);
		    }
	});
}

function formSuccessAdd() {
	$("#formSuccessDivAdd").empty();
     $('[name="line1"]').attr("placeholder", data.line1);
     $('[name="line2"]').attr("placeholder", data.line2);
	 $('[name="houseno"]').attr("placeholder", data.houseno);
	 $('[name="city"]').attr("placeholder", data.city);
	$('[name="county"]').attr("placeholder", data.county);
     $('[name="postcode"]').attr("placeholder", data.postcode);
     $('[name="country"]').attr("placeholder", data.country);
	document.getElementById("addUserAddress").reset();
	 
	$('<div class="alert alert-success" role="alert" >' +
		'Details successfully added!' +
		'</div>').appendTo("#formSuccessDivAdd")
}