tests
testCreateARandomNetworkOfSIRPopulation
	|model|
	model := KEModel new.
	model population compartments: #((S 99) (I 1) (R 0)) defNetwork: #random numberOfContacts: 4.
	self assert: (model population graph nodes size) equals: 100.