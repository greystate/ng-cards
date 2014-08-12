class Burndown
	constructor: (@sprint) ->
		@burns = []
	
	burn: (data) ->
		@burns.push data
		@updateValues()
	
	getTotal: () ->
		total = 0
		total += burn.delta for burn in @burns
		total
	
	updateValues: ->
		value = @sprint.totalPoints()
		for burn in @burns
			burn.value = value = value - burn.delta
