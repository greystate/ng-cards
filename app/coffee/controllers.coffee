sprintController = cardsApp.controller "SprintController", ($scope, sprintService) ->
	$scope.sprints = sprintService.getTestSprints() 
	$scope.taskPoints = Task.POINTS

	$scope.currentSprint = $scope.sprints[0]

	$scope.addCard = (feature) ->
		feature.addCard new Card
			title: "New Card"
			assignee:
				name: "Chriztian"
				initials: "CS"
	