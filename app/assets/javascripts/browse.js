console.log('browse.js loaded')

$(document).on('turbolinks:load', function() {
	tabClickListener('1');
	tabClickListener('2');
	tabClickListener('3');
})

function tabClickListener(tabnum) {
	$('#tab-' + tabnum).on('click', function(event) {
		event.preventDefault();
		//hide all tab groups
		$('.tab-group').addClass('hidden');
		//show specific tab group 
		$('#tab-group-' + tabnum).removeClass('hidden');
		//do some animating and janimating (longer animation time)
		$('#tab-group-' + tabnum).children().removeClass('janimated fadeOut animated fadeIn2')
		$('#tab-group-' + tabnum).children().addClass('animated fadeIn2');
		$('.active').removeClass('active animated fadeIn').addClass('janimated fadeOut')
		$(this).addClass('active animated fadeIn');
	})
};

