var pwLen = false,
	pwLet = false,
	pwClet = false,
	pwNum = false;
pwSpace = false;
pwMatch = false;

function checkPassStrenght() {
	var pswd = document.getElementById("paw").value
	var pswdsec = document.getElementById("pawCheck").value

	//validate the length
	if (pswd.length < 8) {
		$('#length').removeClass('valid').addClass('invalid');
		pwLen = false;
	} else {
		$('#length').removeClass('invalid').addClass('valid');
		pwLen = true;
	}

	//validate letter
	if (pswd.match(/[A-z]/)) {
		$('#letter').removeClass('invalid').addClass('valid');
		pwLet = true;
	} else {
		$('#letter').removeClass('valid').addClass('invalid');
		pwLet = false;
	}

	//validate capital letter
	if (pswd.match(/[A-Z]/)) {
		$('#capital').removeClass('invalid').addClass('valid');
		pwClet = true;
	} else {
		$('#capital').removeClass('valid').addClass('invalid');
		pwClet = false;
	}

	//validate number
	if (pswd.match(/\d/)) {
		$('#number').removeClass('invalid').addClass('valid');
		pwNum = true;
	} else {
		$('#number').removeClass('valid').addClass('invalid');
		pwNum = false;
	}

	//validate space
	if (pswd.match(/[^a-zA-Z0-9\-\/]/)) {
		$('#space').removeClass('invalid').addClass('valid');
		pwSpace = true;
	} else {
		$('#space').removeClass('valid').addClass('invalid');
		pwSpace = false;
	}

	//validate match
	if (pswdsec === pswd) {
		$('#passmatch').removeClass('invalid').addClass('valid');
		pwMatch = true;
	} else {
		$('#passmatch').removeClass('valid').addClass('invalid');
		pwMatch = false;
	}

	if (pwLen == true && pwLet == true && pwClet == true && pwNum == true && pwSpace == true && pwMatch == true) {
		console.log("reach if part")
		document.getElementById("submitRegForm").disabled = false
	} else {
		document.getElementById("submitRegForm").disabled = true
	}

}

function showValidation() {
	$('#pswd_info').show();
}
function hideValidation() {
	$('#pswd_info').hide();
}
