cardController = cardsApp.controller "CardController", ($scope, cardsService) ->
	$scope.employees = [
		name: "Chriztian"
		initials: "CS"
	,
		name: "Niels"
		initials: "NS"
	]
	
	$scope.cards = cardsService.getSomeTestCards()
	$scope.taskPoints = Task.POINTS

	$scope.new = ->
		$scope.cards.push new Card
			title: "New Card"
			assignee: "CS"

	

