as yet unclassified
doIteration
	model populationIDs do: [ :pid|
		|subPop indList|
		model currentPopulationID: pid.
		pid isArray ifTrue: [ model setIndex: (pid last) ].
		subPop := model population at: pid.
		indList := subPop indList.
		indList do: [ :ind|
			(ind attributes at: #alive) ifTrue: [  	
				model addTemporalParameter: #ind value: (ind id). 
				self calProb: ind ]
			 ].
		"Specially processing for the birth of new ind"
		self doBirthEvent: subPop
		 ]