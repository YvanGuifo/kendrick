tests
createSIRSimpleModel4: networkType
	|model population network|
	model := KEModel new.
	population := KEMetaPopulation new.
	population compartments: #(S I R).
	population at: #S put: 99; at: #I put: 1; at: #R put: 0.
	network := KENetwork new: networkType numberOfContacts: 4 population: population.
	population graph: network.
	model population: population.
	
	model addParameter: #beta value: 1.
	model addParameter: #gamma value: 0.1.
	
	model addEquation: ('S:t=-beta*S*I' parseAsAnEquation).
	model addEquation: ('I:t=beta*S*I-gamma*I' parseAsAnEquation).
	model addEquation: ('R:t=gamma*I' parseAsAnEquation).
	
	^ model
	