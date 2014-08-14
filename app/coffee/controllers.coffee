sprintController = cardsApp.controller "SprintController", ($scope, sprintService) ->
	$scope.sprints = sprintService.getTestSprints() 
	$scope.taskPoints = Task.POINTS
	$scope.users = sprintService.getTestUsers()

	$scope.currentSprint = $scope.sprints[0]
	$scope.$on "card.task.add", () ->
		$scope.currentSprint.burndown.updateValues()

	$scope.addCard = (feature) ->
		feature.addCard new Card
			title: "Newly added Card"
			assignee: @users[0]
	
	$scope.addTask = (card) ->
		card.addTask "Code", 5
		$scope.$emit "card.task.add"

	$scope.addBurn = ->
		sprint = $scope.currentSprint
		burnValue = sprint.remainingPoints()
		burnDelta = sprint.burndown.burns[sprint.burndown.burns.length - 1].value - burnValue
		sprint.burndown.burn
			date: (new Date).toISOString().substring 0, 10
			delta: burnDelta