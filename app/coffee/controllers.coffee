burndownController = cardsApp.controller "BurndownController", ($scope) ->
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
		
	$scope.days = burndown.days
	$scope.burns = burndown.burns
	$scope.total = burndown.getTotal()
	$scope.target = burndown.getTotal() / burndown.days
	$scope.current = (burndown.getTotal() - burndown.burns[burndown.burns.length - 1].value) / burndown.burns.length
	
	$scope.addBurn = ->
		alert $scope.$parent.remainingPoints()
		
sprintController = cardsApp.controller "SprintController", ($scope, cardsService) ->
	$scope.taskPoints = Task.POINTS
	$scope.features = [ cardsService.getATestFeature() ]

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
