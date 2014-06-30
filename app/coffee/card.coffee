class Card
	constructor: (options={}) ->
		{@title, @assignee, @tasks} = options
		@title or= ''
		@assignee or= ''
		@tasks or= []
	
	addTask: (title, points=0, done=no) ->
		@tasks.push	new Task {title, points, done}
	
	pointsLeft: ->
		{total, left} = @getPoints()
		left
		
	pointsTotal: ->
		{total, left} = @getPoints()
		total
		
	getPoints: ->
		total = 0
		left = 0
		for task in @tasks
			total += task.points
			left += task.points unless task.done
		return {total, left}
		
