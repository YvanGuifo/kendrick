tests
testFindValuesFromIndexedValues
	| model tmp array indexValues |
	model := self modelSIRDemoMultiConcerns.
	tmp := KEIndexedVariable symbol:#I.
	tmp addIndex: (KEVariable symbol: #i).
	indexValues := tmp indexList collect: [ :each | each evaluateWithModel: model ].
	self assert: (indexValues at: 1) equals: #(1 2).
	array := tmp findValuesFrom: indexValues at: model.
	self assert: array equals: #(25 25)