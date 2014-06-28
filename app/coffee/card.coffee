class Card
	constructor: (@title, @assignee = "") ->
		@tasks = []
	
	addTask: (title, points=0, done=no) ->
		@tasks.push	new Task title, points, done
	
	pointsLeft: ->
		points = 0;
		for task in @tasks
			points += task.points
		return points