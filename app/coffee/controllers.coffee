featureController = cardsApp.controller "FeatureController", ($scope, cardsService) ->
	$scope.employees = [
		name: "Chriztian"
		initials: "CS"
	,
		name: "Niels"
		initials: "NS"
	]

	$scope.feature = cardsService.getATestFeature()
	# $scope.cards = cardsService.getSomeTestCards()
	$scope.taskPoints = Task.POINTS

	$scope.remainingPoints = ->
		total = 0
		total += card.pointsLeft() for card in $scope.feature.cards
		total
	
	$scope.new = ->
		$scope.feature.cards.push new Card
			title: "New Card"
			assignee: "CS"
