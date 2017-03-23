$(document).on('turbolinks:load', function(){
    
	$('.edit-btn').on('click', function(e) {
		e.preventDefault();
		$(e.target).parent().submit()
	})

	$('.delete-btn').on('click', function(e) {
		e.preventDefault();
		$(e.target).parent().submit()
	})


    $('.carousel').carousel({
          dist:0,
          shift:0,
          padding:20,
    });
});