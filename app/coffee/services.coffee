cardsService = cardsApp.factory "cardsService", ->
	factory =
		getSomeTestCards: ->
			cards = []
			card = new Card "Build Page", "CS"
			card.addTask "HTML", 5
			card.addTask "CSS", 8
			cards.push card

			card = new Card "Build Template", "CS"
			card.addTask "XML", 3
			card.addTask "XSLT", 5, Task.DONE
			cards.push card
			
			cards
