sprintService = cardsApp.factory "sprintService", ->
	factory =
		getSomeTestCards: ->
			cards = []
			card = new Card
				title: "Build Page"
				assignee: "CS"
			card.addTask "HTML", 5, Task.DONE
			card.addTask "CSS", 8
			cards.push card

			card = new Card
				title: "Build Template"
				assignee: "CS"
			card.addTask "XML", 3, Task.DONE 
			card.addTask "XSLT", 5
			cards.push card
			
			card = new Card
				title: "Save Progress"
				assignee: "CS"
			card.addTask "Load localStorage", 3
			card.addTask "Add bindings", 5
			cards.push card
			
			cards

		getTestBurndown: (sprint) ->
			burndown = new Burndown sprint 
			burndown.burn
				date: "2014-07-08"
				delta: 5
			burndown.burn
				date: "2014-07-09"
				delta: 3
			burndown

		getTestFeature: ->
			feature = new Feature
				cards: @getSomeTestCards()

		getTestSprints: ->
			sprints = []
			sprint = new Sprint "A", 5
			sprint.features[0] = @getTestFeature()
			sprint.burndown = @getTestBurndown(sprint)
			sprints.push sprint
			sprints
