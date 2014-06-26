cardController = cardsApp.controller "CardController", [
	"$scope", ($scope) ->
		$scope.employees = [
			name: "Chriztian"
			initials: "CS"
		,
			name: "Niels"
			initials: "NS"
		]

		$scope.card = new Card "Test card", "CS"
		$scope.card.addTask "HTML", 5
		$scope.card.addTask "CSS", 8
	]