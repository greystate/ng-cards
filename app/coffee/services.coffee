sprintService = cardsApp.factory "sprintService", ->
	factory =
		getSomeTestCards: ->
			cards = []
			card = new Card
				title: "Build Page"
				assignee: "CS"
			card.addTask "HTML", 5
			card.addTask "CSS", 8
			cards.push card

			card = new Card
				title: "Build Template"
				assignee: "CS"
			card.addTask "XML", 3
			card.addTask "XSLT", 5, Task.DONE
			cards.push card
			
			cards

		getTestBurndown: ->
			burndown = new Burndown 5
			burndown.burn
				date: "2014-07-09"
				value: 3
			burndown.burn
				date: "2014-07-08"
				value: 20
			burndown.burn
				date: "2014-07-07"
				value: 32
			burndown.burn
				date: "2014-07-10"
				value: 1
			burndown

		getTestFeature: ->
			feature = new Feature
				cards: @getSomeTestCards()

		getTestSprints: ->
			sprints = []
			sprint = new Sprint "A", 5
			sprint.features[0] = @getTestFeature()
			sprint.burndown = @getTestBurndown()
			sprints.push sprint
			sprints
