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
		$('#tab-group-' + tabnum).addClass('fadeIn');
		$('.tab').removeClass('active');
		$(this).addClass('active fadeIn');
	})
};

