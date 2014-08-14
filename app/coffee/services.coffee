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
		
		getTestUsers: ->
			users = []
			user1 = new User
				name: "Chrizian Steinmeier"
				initials: "CS"
			user2 = new User
				name: "Niels Steinmeier"
				initials: "NS"
			user3 = new User
				name: "Karsten Moskjær Kofod"
				initials: "KMK"
			users.push user for user in [user1, user2, user3]
			users
			
		
		getEmptyStartSprint: ->
			sprints = []
			sprint = new Sprint "Initial Test", 10
			sprint.features[0] = new Feature
			sprints.push sprint
			sprints
