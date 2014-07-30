tests
testBirthEventOnRandomNetwork
	|model|
	model := KEModel new.
	model population compartments: #((S 90) (I 1) (R 0)) defNetwork: #random numberOfContacts: 4.
	self assert: (model population graph nodes size) equals: 91.
	model population graph newNode: (KEIndividual new currentStatus: #I).
	self assert: (model population graph nodes size) equals: 92.
	
	