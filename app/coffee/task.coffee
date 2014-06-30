class Task
	# Enums/constants
	@DONE = yes
	@POINTS = [1, 3, 5, 8, 13, 20]
	
	constructor: (options={}) ->
		{@title, @points, @done} = options
		@title or= ''
		@points or= 0
		@done or= no
		
	complete: ->
		@done = yes
	