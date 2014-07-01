class Feature
	constructor: (options={}) ->
		{name, area} = options
		name or= "New feature"
		area or= "Setup"
		@cards = []
	
	addCard: (card) ->
		@cards.push card