as yet unclassified
testEquationHasTwoEvents

| equation |
equation := PPODEParser parse: 'I:t=beta*S*I-gamma*I'.
self assert: (equation generateEvents size) equals: 2