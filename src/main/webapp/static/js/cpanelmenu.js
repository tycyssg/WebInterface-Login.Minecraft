window.onload = function() {
    var navItems = $('.admin-menu li > a');
    var navListItems = $('.admin-menu li');
    var allWells = $('.admin-content');
    var allWellsExceptFirst = $('.admin-content:not(:first)');

    var s = new URL(location.href).searchParams.get('tab');
    
	if (s == "invite") {
		allWells.hide();
		$('#invite').show();
	}else{
		  allWellsExceptFirst.hide();
	}
	
    navItems.click(function(e)
    {
        e.preventDefault();
        navListItems.removeClass('active');
        $(this).closest('li').addClass('active');
        
        allWells.hide();
        var target = $(this).attr('data-target-id');
        $('#' + target).show();
    });
};