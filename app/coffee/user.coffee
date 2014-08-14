class User
	constructor: (options={}) ->
		{@name, @initials} = options
		@name or= ""
		@initials or= ""
	
	