class Task
	# Enums/constants
	@DONE = yes
	
	constructor: (options={}) ->
		{@title, @points, @done} = options
		@title or= ''
		@points or= 0
		@done or= no
		
	complete: ->
		@done = yes
	