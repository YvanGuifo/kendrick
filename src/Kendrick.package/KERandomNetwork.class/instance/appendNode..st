as yet unclassified
appendNode: anAssociation
	|label idx rand|
	label := anAssociation key.
	idx := anAssociation value.
	rand := Random new.
	activeNodes do: [ :i| 
		(p > (rand next)) ifTrue: [ 
			network with: (Array with: idx with: i) strengthOfConnection: strengthOfConnection ]
		].
	activeNodes add: idx