cardController = cardsApp.controller "CardController", ($scope) ->
		$scope.employees = [
			name: "Chriztian"
			initials: "CS"
		,
			name: "Niels"
			initials: "NS"
		]
		
		$scope.cards = []

		card = new Card "Build Page", "CS"
		card.addTask "HTML", 5
		card.addTask "CSS", 8
		$scope.cards.push card

		card = new Card "Build Template", "CS"
		card.addTask "XML", 3
		card.addTask "XSLT", 5
		$scope.cards.push card
