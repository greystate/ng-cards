class Task
	constructor: (@title, @points = 0) ->
		@done = no
	
	complete: ->
		@done = yes
	