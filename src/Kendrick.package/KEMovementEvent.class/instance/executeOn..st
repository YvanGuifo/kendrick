as yet unclassified
executeOn: model
	actions keysAndValuesDo: [ :status :value|
		|subPop old|
		subPop := (model population at: status).
		old := (subPop at: compartment) currentNbIndividuals.
		(subPop at: compartment) currentNbIndividuals: (old + value)
		 ]