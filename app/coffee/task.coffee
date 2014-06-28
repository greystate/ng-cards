class Task
	# Enums/constants
	@DONE = yes
	
	constructor: (@title, @points=0, @done=no) ->
	
	complete: ->
		@done = yes
	