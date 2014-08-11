class Burndown
	constructor: (@days) ->
		@burns = []
	
	burn: (data)->
		@burns.push data
	
	getTotal: () ->
		total = 0
		total += burn.value for burn in @burns
		total