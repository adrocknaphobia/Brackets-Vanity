$ ->
	$('#hero li a').click ->
		$('#hero li').removeClass('selected')
		$(this).parent().addClass('selected')
		return false