cardController = cardsApp.controller "CardController", ($scope, cardsService) ->
	$scope.employees = [
		name: "Chriztian"
		initials: "CS"
	,
		name: "Niels"
		initials: "NS"
	]
	
	$scope.cards = cardsService.getSomeTestCards()

