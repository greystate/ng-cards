featureController = cardsApp.controller "FeatureController", ($scope, cardsService) ->
	$scope.employees = [
		name: "Chriztian"
		initials: "CS"
	,
		name: "Niels"
		initials: "NS"
	]

	$scope.feature = cardsService.getATestFeature()
	$scope.taskPoints = Task.POINTS

	$scope.remainingPoints = ->
		total = 0
		total += card.pointsLeft() for card in $scope.feature.cards
		total
	
	$scope.new = ->
		$scope.feature.cards.push new Card
			title: "New Card"
			assignee: "CS"

burndownController = cardsApp.controller "BurndownController", ($scope) ->
	burndown = new Burndown 5
	burndown.burn
		date: "2014-07-09"
		value: 3
	burndown.burn
		date: "2014-07-08"
		value: 8
	burndown.burn
		date: "2014-07-07"
		value: 12
	burndown.burn
		date: "2014-07-10"
		value: 1
		
	$scope.days = burndown.days
	$scope.burns = burndown.burns
	$scope.total = burndown.getTotal()
	$scope.target = burndown.getTotal() / burndown.days
	$scope.current = (burndown.getTotal() - burndown.burns[burndown.burns.length - 1].value) / burndown.burns.length
