console.log('browse.js loaded')

$(document).on('turbolinks:load', function() {
	tabClickListener('1');
	tabClickListener('2');
	tabClickListener('3');
})

function tabClickListener(tabnum) {
	$('#tab-' + tabnum).on('click', function(event) {
		event.preventDefault();
		$('.tab-group').addClass('hidden');
		$('#tab-group-' + tabnum).removeClass('hidden');
		$('#tab-group-' + tabnum).children().removeClass('animated fadeIn2')
		$('#tab-group-' + tabnum).children().addClass('animated fadeIn2');
		$('.active').removeClass('active animated fadeIn').addClass('animated fadeOut')

		// $('.tab').removeClass('active animated fadeIn');
		$(this).addClass('active animated fadeIn');
	})
};

