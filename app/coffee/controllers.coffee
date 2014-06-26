cardController = cardsApp.controller "CardController", [
	"$scope", ($scope) ->
		$scope.card = new Card "Test card", "CS"
		$scope.card.addTask "Try this out"
	]