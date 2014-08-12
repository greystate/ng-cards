sprintController = cardsApp.controller "SprintController", ($scope, sprintService) ->
	$scope.sprints = sprintService.getTestSprints() 
	$scope.taskPoints = Task.POINTS

	$scope.addCard = (feature) ->
		feature.addCard new Card
			title: "New Card"
			assignee:
				name: "Chriztian"
				initials: "CS"
				
	$scope.remainingPoints = ->
		points = 0
		for feature in @features
			points += card.pointsLeft() for card in feature.cards
		points
	