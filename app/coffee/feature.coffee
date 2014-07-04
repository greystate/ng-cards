class Feature
	constructor: (options={}) ->
		{@name, @area, @cards} = options
		@name or= "New feature"
		@area or= "Setup"
		@cards or= []
	
	addCard: (card) ->
		@cards.push card