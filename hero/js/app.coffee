$ ->
	$('#hero li a').click ->
		index = $('#hero li').index($(this).parent())
		$('#hero li').removeClass('selected')
		$(this).parent().addClass('selected')

		$('#hero .slide').removeClass('before after selected')


		before = $('#hero .slide').slice(0, index)
		before.addClass('before')
		$($('#hero li')[index]).addClass('selected')
		after = $('#hero .slide').slice(index + 1)
		after.addClass('after')

		$('#hero .indicator').css('top', $(this).parent().position().top)
		return false