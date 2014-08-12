class Sprint
	constructor: (@name = "A", @days = 7) ->
		@burndown = new Burndown @days
		@features = []

	totalPoints: ->
		points = 0
		for feature in @features
			points += card.pointsTotal() for card in feature.cards
		points
	
	targetVelocity: ->
		@totalPoints() / @days
		
	currentVelocity: ->
		burnCount = @burndown.burns.length
		(@totalPoints() - @burndown.burns[burnCount - 1].value) / burnCount
		